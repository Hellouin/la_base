/*
 * rtos.c
 *
 *  Created on: Sep 7, 2024
 *      Author: hellm
 */
#include "rtos.h"
#include "cmsis_os.h"
#include "f9p.h"

extern void StartTask03(void const * argument);
extern uint8_t rx_byte;
extern UART_HandleTypeDef huart1;
extern UART_HandleTypeDef huart2;
extern rtcmMsg_t RtcmMsgTab[RTCM_MSG_TAB];

extern QueueHandle_t rtcmQueue;
extern QueueHandle_t rtcmDataQueue;
extern uint8_t rx_byte;


/* create Handle of task*/
/*
osThreadId bacasable_Handle;
osThreadId UartDebug_Handle;
*/
osThreadId StartThread_Handle;
osThreadId F9pTask_Handle;

/*
 * name  : initRTOS
 * brief : this function set the RTOS object, like task, Queue etc..
 * brief : Should be called before osKernelStart()
 * param : nop
 *
 * return: kStatus_Success
 */
status_t initRTOS()
{
	/* create thread */
	/* definition and creation of tache_bacasable */
	//osThreadDef(tache_bacasable, StartTask01, osPriorityHigh, 0, 128);
	//bacasable_Handle = osThreadCreate( osThread(tache_bacasable) , NULL );

	/* definition and creation of tache_bacasable */
	//osThreadDef(tache_UartDebug, StartTask02, osPriorityLow, 0, 128);
	//UartDebug_Handle = osThreadCreate( osThread(tache_UartDebug) , NULL );

	/* definition and creation of tache_bacasable */
	osThreadDef(tache_F9pTask, StartTask02, osPriorityNormal, 0, 1024);
	F9pTask_Handle = osThreadCreate( osThread(tache_F9pTask) , NULL );

	osThreadDef(tache_StartThread, StartTask03, osPriorityHigh, 0, 512);
	StartThread_Handle = osThreadCreate( osThread(tache_StartThread) , NULL );


	return kStatus_Success;
}

/*
 * name  : StartTask01, also named bacasable (sand box)
 * brief : temporary task to execute quickly code function
 * param : nop
 *
 * return: nop
 */
void StartTask01(void const * argument)
{
	for(;;)
	{

	}
	// fonction bac à sable : foutre le code ici dans un premier temps
}

/**
  * @brief  About the F9P (GPS) management
  * @param  None
  * @retval None
 */
 uint8_t *foo  = "miaou";
void StartTask02(void const * argument)
{
	uint8_t F9pRawData2[3] = {0};
	static uint8_t writeIndex = 0;
	static uint8_t readIndex = 0;
#ifdef DEBUG_LOG_CSL
	uint16_t cRtcmMsgType = 0;
	char uartMsg[64];
	printf("task 2 start\r\n");
#endif
	HAL_UART_Receive_IT(&huart1, &rx_byte, 1);
	HAL_NVIC_EnableIRQ(USART1_IRQn);

	for(;;)
	{
		// if rtcm is receive
		if (F9p_DataReceive(RtcmMsgTab, &writeIndex) == kStatus_Success)
		{
		    while (readIndex != writeIndex)
		    {
#ifdef DEBUG_LOG_CSL

		    	snprintf(uartMsg, sizeof(uartMsg), "RTCM recu: %d ; Len = %d, index = %d\r\n", RtcmMsgTab[readIndex].wRtcmType, RtcmMsgTab[readIndex].wRtcmLen, readIndex);
		    	HAL_UART_Transmit(&huart2, (uint8_t *)uartMsg, strlen(uartMsg), 1000);
#endif
		    	// send to tcp client
		    	//memcpy(&RtcmMsgTab[readIndex].pcRtcmData, foo, 5);
		    	xQueueSend(rtcmDataQueue, &RtcmMsgTab[readIndex], portMAX_DELAY);

		    	// buffer managment
		    	readIndex = (readIndex + 1) % RTCM_MSG_TAB;
		    }
		}
		osDelay(1);
	}
}
