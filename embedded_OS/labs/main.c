/* ***************************************************************************
 * File: main.c
 * Description: Main source file for lab 1.
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Author        	Date      		Comments on this revision
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *                                  - v1
 *****************************************************************************/

/* Standard includes. */
#include <stdio.h>

/* Scheduler includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "croutine.h"

/* Demo application includes. */
#include "public.h"
#include "initBoard.h"
#include "public.h"
/*-----------------------------------------------------------*/
/* Prototypes for the standard FreeRTOS callback/hook functions implemented
within this file. */
void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName );

/*-----------------------------------------------------------*/

/*
 * Create the demo tasks then start the scheduler.
 */
int main( void )
{
        /* CLK config at 16MHz*/
    OSCILLATOR_Initialize();  // fosc = 20 MHZ
    initIO();

   //Tasks creation
	
 


    /* Finally start the scheduler. */
	vTaskStartScheduler();

	/* Will only reach here if there is insufficient heap available to start
	the scheduler. */
	return 0;
}

/*-----------------------------------------------------------*/

/*-----------------------------------------------------------*/


/*-----------------------------------------------------------*/
void vApplicationIdleHook( void )
{
              
}
/*-----------------------------------------------------------*/

void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName )
{
    pxTask = pxTask;
    pcTaskName = pcTaskName;
       
		for( ;; );
}

/*-----------------------------------------------------------*/
