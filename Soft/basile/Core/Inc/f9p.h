/*
 * f9p.h
 *
 *  Created on: May 16, 2025
 *      Author: hellm
 */

#ifndef INC_F9P_H_
#define INC_F9P_H_

#include "stdint.h"
#include "tool.h"

/* define*/
#define RTCM_MSG_TAB 6
#define RTCM_MSG_MAX_LEN 1023
typedef struct rtcmMsg_t
{
	uint16_t wRtcmLen;
	uint8_t pcRtcmData[1024];
	uint16_t wRtcmType;
	uint8_t *pcRtcmCrc;
}rtcmMsg_t;

/* prototype */
status_t F9p_DataReceive(rtcmMsg_t *LocalRtcmMsgTab, uint8_t *RtcmMsgCountParam);

#endif /* INC_F9P_H_ */
