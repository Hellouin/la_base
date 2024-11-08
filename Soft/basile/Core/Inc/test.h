/*
 * test.h
 *
 *  Created on: Sep 7, 2024
 *      Author: hellm
 */

#ifndef INC_TEST_H_
#define INC_TEST_H_

#include "stdint.h"

#define UNIT_TEST 				// remove or add this define to activate unit test
#define FUNCTIONAL_TEST			// remove or add this define to activate functional test


typedef int8_t testStatus_t;

enum eResultState_t {
	success,
	failed,
	timeout,
	retry,
	ignore,
	missing
};

typedef struct testStructure_t {

	testStatus_t ResultState;		// résultat du test
	uint8_t *pcTestFunctionName;	// nom de la fonction testé
	uint16_t sTestFunctionNum;		// champ résérvé, rempli par TFunction_Factory()
	uint16_t sTimeSpentOnTest;		// temps passé dur l'execution du test
	char *pcbuffer;					// ptite phrase si besoin est, ou d'autre genre d'info

}testStructure_t;

void TFunction_Factory(void);

#endif /* INC_TEST_H_ */
