/*
 * tcpclient.c
 *
 *      Author: hellm
 */


#include "lwip/opt.h"

#include "lwip/api.h"
#include "lwip/sys.h"

#include "tcpclient.h"
#include "string.h"

#include "f9p.h"
#include "stm32l4xx_hal.h"

static struct netconn *conn;
static struct netbuf *buf;
static ip_addr_t *addr, dest_addr;
static unsigned short port, dest_port;
char msgc[100];
char smsgc[200];
int indx = 0;
extern QueueHandle_t rtcmDataQueue;

// Function to send the data to the server
void tcpsend(uint8_t *data, uint8_t len);

// tcpsem is the binary semaphore to prevent the access to tcpsend
sys_sem_t tcpsem;


#define RTCM_MESSAGE_COUNT 10

// Structure pour un message RTCM


static void tcpinit_thread(void *arg)
{
	err_t err, connect_error;

	/* Create a new connection identifier. */
	conn = netconn_new(NETCONN_TCP);

	if (conn!=NULL)
	{
		/* Bind connection to the port number 7 (port of the Client). */
		err = netconn_bind(conn, IP_ADDR_ANY, 7);

		if (err == ERR_OK)
		{
			/* The desination IP adress of the computer = 169.254.168.110 */

			IP_ADDR4(&dest_addr, 169, 254, 168, 110);
			dest_port = 2101;  // server port

			/* Connect to the TCP Server */
			connect_error = netconn_connect(conn, &dest_addr, dest_port);

			// If the connection to the server is established, the following will continue, else delete the connection
			if (connect_error == ERR_OK)
			{
				// Release the semaphore once the connection is successful
				sys_sem_signal(&tcpsem);
				while (1)
				{
					/* wait until the data is sent by the server */
					if (netconn_recv(conn, &buf) == ERR_OK)
					{
						/* Extract the address and port in case they are required */
						addr = netbuf_fromaddr(buf);  // get the address of the client
						port = netbuf_fromport(buf);  // get the Port of the client

						/* If there is some data remaining to be sent, the following process will continue */
						do
						{

							strncpy (msgc, buf->p->payload, buf->p->len);   // get the message from the server

							// Or modify the message received, so that we can send it back to the server
							sprintf (smsgc, "\"%s\" was sent by the Server\n", msgc);

							// semaphore must be taken before accessing the tcpsend function
							sys_arch_sem_wait(&tcpsem, 500);

							// send the data to the TCP Server
							tcpsend((uint8_t *)smsgc, strlen(smsgc));

							memset (msgc, '\0', 100);  // clear the buffer
						}
						while (netbuf_next(buf) >0);

						netbuf_delete(buf);
					}
				}
			}

			else
			{
				/* Close connection and discard connection identifier. */
				netconn_close(conn);
				netconn_delete(conn);
			}
		}
		else
		{
			// if the binding wasn't successful, delete the netconn connection
			netconn_delete(conn);
		}
	}
}

void tcpsend(uint8_t *data, uint8_t len)
{
	// send the data to the connected connection
	netconn_write(conn, data, len, NETCONN_COPY);
	// relaese the semaphore
	sys_sem_signal(&tcpsem);
}

rtcmMsg_t TcpRtcmMsgTab = {0};
extern UART_HandleTypeDef huart2;

static void tcpsend_thread (void *arg)
{

	for (;;)
	{
		// waiting data from queue
		xQueueReceive(rtcmDataQueue, &TcpRtcmMsgTab, portMAX_DELAY);

		// send the data to the server
		sys_arch_sem_wait(&tcpsem, 500);
		tcpsend(&TcpRtcmMsgTab.pcRtcmData[0], TcpRtcmMsgTab.wRtcmLen + 6 ); // +6 → header (3byte) + CRC (3byte)

		// ptit printf parce qu'on est pas des bêtes
		printf("Tcp data send\r\n");
	}
}




void tcpclient_init (void)
{
	sys_sem_new(&tcpsem, 0);  // the semaphore would prevent simultaneous access to tcpsend
	sys_thread_new("tcpinit_thread", tcpinit_thread, NULL, DEFAULT_THREAD_STACKSIZE,osPriorityNormal);
	sys_thread_new("tcpsend_thread", tcpsend_thread, NULL, DEFAULT_THREAD_STACKSIZE,osPriorityNormal);
}
