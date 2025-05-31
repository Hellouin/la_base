/*
 * f9p.c
 *
 *  Created on: May 16, 2025
 *      Author: hellm
 */
#include "f9p.h"
#include "rtos.h"
#include "cmsis_os.h"
#include "stm32l4xx_hal.h"

extern SemaphoreHandle_t xRxUartReceive;
extern UART_HandleTypeDef huart1;
extern UART_HandleTypeDef huart2;
extern QueueHandle_t rtcmQueue;
extern uint8_t rx_byte;

#define RX_BUFFER_SIZE 64  // Size of receive buffer
uint8_t rx_buffer[RX_BUFFER_SIZE];  // Circular buffer or temp buffer
#define RTCM_MSG_TYPE_READ 4
uint16_t RtcmMsgTypeRead[RTCM_MSG_TYPE_READ] = { // type of RTCM message to read
		1005,
		1077,
		1087,
		1230
};

// create an instance for Rtcm msg
rtcmMsg_t RtcmMsgTab[RTCM_MSG_TAB]={0}; // up to 6 Rtcm msg should be acquired  by one time
uint8_t write_index = 0;
uint8_t readIndex = 0;

status_t IsRtcmTypeAccepted(uint16_t type)
{
    for (uint8_t i = 0; i < RTCM_MSG_TYPE_READ; i++) {
        if (type == RtcmMsgTypeRead[i])
            return kStatus_Success;
    }
    return kStatus_Fail;
}

/**
  * @brief  function to handle data from F9P
  * @param  None
  * @retval None
 */
status_t F9p_DataReceive(rtcmMsg_t *LocalRtcmMsgTab, uint8_t *RtcmMsgCountParam)
{
    uint8_t RtcmMsgCount = *RtcmMsgCountParam;
    uint8_t byte = 0;
    uint16_t payloadLen = 0;
    rtcmMsg_t *currentMsg = &LocalRtcmMsgTab[RtcmMsgCount];
    uint16_t index = 0;

    // // verify if it was really RTCM data msg (0xD3)
    do {
        if (xQueueReceive(rtcmQueue, &byte, portMAX_DELAY) != pdTRUE)
            return kStatus_Fail;
    } while (byte != 0xD3);

    currentMsg->pcRtcmData[index++] = byte;

    // get len
    for (int i = 0; i < 2; i++) {
        if (xQueueReceive(rtcmQueue, &byte, portMAX_DELAY) != pdTRUE)
            return kStatus_Fail;
        currentMsg->pcRtcmData[index++] = byte;
    }

    payloadLen = ((currentMsg->pcRtcmData[1] & 0x03) << 8) | currentMsg->pcRtcmData[2];

    if (payloadLen > RTCM_MSG_MAX_LEN)
    	return kStatus_Fail;

    // read payload (+ 3 CRC byte)
    for (int i = 0; i < payloadLen + 3; i++) {
        if (xQueueReceive(rtcmQueue, &byte, portMAX_DELAY) != pdTRUE)
            return kStatus_Fail;
        currentMsg->pcRtcmData[index++] = byte;
    }

    currentMsg->wRtcmLen = payloadLen;

    // prevent reading error
    currentMsg->wRtcmType = ((RtcmMsgTab[readIndex].pcRtcmData[3] << 4) | (RtcmMsgTab[readIndex].pcRtcmData[4] >> 4));
    if (IsRtcmTypeAccepted(currentMsg->wRtcmType))
        return kStatus_Fail;

    // RtcmMsgCount +1 (circular buffer)
    RtcmMsgCount = (RtcmMsgCount >= RTCM_MSG_TAB - 1) ? 0 : RtcmMsgCount + 1;
    *RtcmMsgCountParam = RtcmMsgCount;

    return kStatus_Success;
}



//status_t F9p_DataReceive()
//{
//	if (osSemaphoreWait(xRxUartReceive, osWaitForever) == osOK)
//	{
//		if (1)  // Check which UART triggered callback
//			{
//				rx_buffer[rx_index++] = rx_byte;
//
//		        // Wrap around if buffer is full (you could implement a circular buffer)
//		        if (rx_index >= RX_BUFFER_SIZE)
//		        {
//		            rx_index = 0;
//		            HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, 0);
//		        }
//		        // Restart UART reception in interrupt mode for next byte
//		        HAL_UART_Receive_IT(&huart1, &rx_byte, 1);
//
//		    }
//
//	}
//	else { HAL_UART_Receive_IT(&huart1, &rx_byte, 1); }
//    printf("Valeurs hex : %02X %02X %02X %02X\n\r", rx_buffer[0], rx_buffer[1], rx_buffer[2], rx_buffer[3]);
//	return kStatus_Success;
//}

