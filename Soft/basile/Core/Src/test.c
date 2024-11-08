/*
 * test.c
 *
 *  Created on: Nov 6, 2024
 *      Author: hellm
 */

#include "test.h"
#include "stm32l4xx_hal.h"

extern UART_HandleTypeDef huart2;

#ifdef UNIT_TEST
testStatus_t exempleTestFunctionPattern( testStructure_t *ptLocalTestStructure)
{
	// do a ptit test

	ptLocalTestStructure->ResultState = failed;
	ptLocalTestStructure->pcbuffer = "petit message si besoin";
	ptLocalTestStructure->pcTestFunctionName ="exempleTestFunctionPattern";
	ptLocalTestStructure->sTimeSpentOnTest = 3;
	return 0;
}
#endif

void TFunction_Factory(void){

	#define NUM_TFUNCT 2

	testStructure_t testStructure;
	testStatus_t (*TabOfTFunction[NUM_TFUNCT])( testStructure_t *ptTestStructure) = {
			exempleTestFunctionPattern,
			exempleTestFunctionPattern
		//	TFunction_2,
        //  TFunction_3,
			};

	for(int i =0; i<NUM_TFUNCT; i++)
	{
		if( !TabOfTFunction[i](&testStructure) )
		{
			char buffer[1024]= {0};
			memcpy( buffer, testStructure.pcTestFunctionName,  strlen(testStructure.pcTestFunctionName));
			sprintf(&buffer[strlen(buffer)], ", sTestFunctionNum=%d, ", i);
			sprintf(&buffer[strlen(buffer)], "ResultState=%d, ", testStructure.ResultState);
			memcpy( &buffer[strlen(buffer)], testStructure.pcbuffer,  strlen(testStructure.pcbuffer));
			sprintf(&buffer[strlen(buffer)], ", sTimeSpentOnTest=%d\r\n", testStructure.sTimeSpentOnTest);

			HAL_UART_Transmit(&huart2, (uint8_t*)buffer , strlen(buffer), 1000);
		}

	}
}
