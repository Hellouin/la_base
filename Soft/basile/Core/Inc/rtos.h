/*
 * rtos.h
 *
 *  Created on: Sep 7, 2024
 *      Author: hellm
 */

#ifndef INC_RTOS_H_
#define INC_RTOS_H_

#include "tool.h"
#include "rtos.h"
//#include "cmsis_os.h"
#include "stm32l4xx_hal.h"

/* private prototype */
void StartTask01(void const * argument);
void StartTask02(void const * argument);

#endif /* INC_RTOS_H_ */
