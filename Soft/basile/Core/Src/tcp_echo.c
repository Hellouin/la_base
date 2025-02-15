/*
 * tcpecho.c
 *
 *  Created on: Nov 10, 2024
 *      Author: hellm
 */

#include "tcp_echo.h"
#include "main.h"
#include "cmsis_os.h"
#include "lwip.h"
#include "lwip/api.h"
#define TCPECHO_THREAD_PRIO	0 	//osPriorityNormal

static void tcpecho_thread(void *arg);

void tcpecho_init(void)
{
	sys_thread_new("tcpecho_thread", tcpecho_thread, NULL, DEFAULT_THREAD_STACKSIZE, TCPECHO_THREAD_PRIO);
}

static void tcpecho_thread(void *arg)
{
  struct netconn *conn, *newconn;
  err_t err, accept_err;
  struct netbuf *buf;
  void *data;
  u16_t len;
  err_t recv_err;

  LWIP_UNUSED_ARG(arg);

  /* Create a new connection identifier. */
  conn = netconn_new(NETCONN_TCP);

  if (conn!=NULL)
  {
    /* Bind connection to port number 7. */
    err = netconn_bind(conn, NULL, 7);

    if (err == ERR_OK)
    {
      /* Tell connection to go into listening mode. */
      netconn_listen(conn);

      while (1)
      {
        /* Grab new connection. */
         accept_err = netconn_accept(conn, &newconn);

        /* Process the new connection. */
        if (accept_err == ERR_OK)
        {
          recv_err = netconn_recv(newconn, &buf);
					while ( recv_err == ERR_OK)
          {
            do
            {
            	netbuf_data(buf, &data, &len);
            	netconn_write(newconn, data, len, NETCONN_COPY);

            }
            while (netbuf_next(buf) >= 0);

            netbuf_delete(buf);
            recv_err = netconn_recv(newconn, &buf);
          }

          /* Close connection and discard connection identifier. */
          netconn_close(newconn);
          netconn_delete(newconn);
        }
      }
    }
    else
    {
      netconn_delete(newconn);
      printf(" can not bind TCP netconn");
    }
  }
  else
  {
    printf("can not create TCP netconn");
  }
}
