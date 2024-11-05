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


typedef int32_t testStatus_t;

typedef struct test_Handler_t{

	int8_t cStateOfTest;		// Fail or success
	int8_t *cMsg;				// Short sentence to explain why test failed

}test_Handler_t;


#endif /* INC_TEST_H_ */
