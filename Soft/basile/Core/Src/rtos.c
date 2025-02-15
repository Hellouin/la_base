/*
 * rtos.c
 *
 *  Created on: Sep 7, 2024
 *      Author: hellm
 */
#include "rtos.h"
#include "cmsis_os.h"
extern void StartTask03(void const * argument);
/* create Handle of task*/
/*
osThreadId bacasable_Handle;
osThreadId UartDebug_Handle;
*/
osThreadId StartThread_Handle;


/*
 * name  : initRTOS
 * brief : this function set the RTOS object, like task, Queue etc..
 * brief : Should be called before osKernelStart()
 * param : nop
 *
 * return: nop
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

void StartTask02(void const * argument)
{
	// setup mecanism to send data with uart
	int i =0;
	for(;;)
	{

	}
}
