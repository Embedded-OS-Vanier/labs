/* LCD functions
 *		
 *   *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Author        	Date      			Comments on this revision		
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Serge Hould		Jan. 15 2019        v2.0    port to dspic33
 *
 * 
 *
 **********************************************************************/

/* Scheduler includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

/* Demo includes. */
#include "lcd.h"

/*-----------------------------------------------------------*/


/* LCD commands. */
#define lcdCLEAR			( 0x01 )
#define lcdHOME				( 0x02 )
#define lcdLINE2			( 0xc0 )

/* SFR that seems to be missing from the standard header files. */
#define PMAEN				*( ( unsigned short * ) 0x60c )

/* LCD R/W signal. */
#define  lcdRW  LATDbits.LATD5

/* LCD lcdRS signal. */
#define  lcdRS  LATBbits.LATB15

/* LCD lcdE signal . */
#define  lcdE   LATDbits.LATD4

/* Control signal pin direction. */
#define  RW_TRIS	TRISDbits.TRISD5
#define  RS_TRIS	TRISBbits.TRISB15
#define  E_TRIS		TRISDbits.TRISD4

/* Port for LCD data */
#define  lcdDATA      LATE
#define  lcdDATAPORT  PORTE

/* I/O setup for data Port. */
#define  TRISDATA  TRISE

/* The length of the queue used to send messages to the LCD gatekeeper task. */
#define lcdQUEUE_SIZE		3
/*-----------------------------------------------------------*/

/* The queue used to send messages to the LCD task. */
QueueHandle_t xLCDQueue;

static void LCDCommand( char cCommand );
static void LCDData( char cChar );
static void Wait(unsigned int B);

unsigned int _uLCDloops;

void LCDPos2(int p){
    LCDCommand( lcdLINE2 );
}

void LCDPos1(int p){
    LCDCommand( lcdHOME );
}

void LCDL2Home(void){
     LCDCommand( lcdLINE2 );
}
void LCDL1Home(void){
LCDCommand( lcdHOME );
}

void LCDGotoRow( unsigned short usRow )
{
	if( usRow == 0 )
	{
		LCDCommand( lcdHOME );
	}
	else
	{
		LCDCommand( lcdLINE2 );
	}
}
/*-----------------------------------------------------------*/

static void LCDCommand( char cCommand )
{
    _uLCDloops = LCD_S_INSTR;
	/* Prepare RD0 - RD7. */
	lcdDATA &= 0xFF00;

	/* Command byte to lcd. */
    lcdDATA |= cCommand;

	/* Ensure lcdRW is 0. */
	lcdRW = 0;
    lcdRS = 0;

	/* Toggle lcdE line. */
    lcdE = 1;
	while(_uLCDloops)
	_uLCDloops--;
    lcdE = 0;
	while(_uLCDloops)
	_uLCDloops--;
}
/*-----------------------------------------------------------*/

static void LCDData( char cChar )
{
    _uLCDloops = LCD_S_INSTR;
    
    while(_uLCDloops)
	_uLCDloops--;
    
	/* ensure lcdRW is 0. */
	lcdRW = 0;

	/* Assert register select to 1. */
    lcdRS = 1;

	/* Prepare RD0 - RD7. */
	lcdDATA &= 0xFF00;

	/* Data byte to lcd. */
    lcdDATA |= cChar;
    lcdE = 1;
 	Nop();
    Nop();
    Nop();

	/* Toggle lcdE signal. */
    lcdE = 0;

	/* Negate register select to 0. */
    lcdRS = 0;

	while(_uLCDloops)
	_uLCDloops--;
}
/*-----------------------------------------------------------*/
void LCDPut( char cChar ){
    LCDData(cChar);
}

void LCDPutString( char *pcString )
{
    _uLCDloops = LCD_F_INSTR;
	/* Write out each character with appropriate delay between each. */
	while( *pcString )
	{
		 LCDData( *pcString );
		pcString++;
        while(_uLCDloops)
        _uLCDloops--;;
	}
}
/*-----------------------------------------------------------*/

void LCDClear( void )    // LCDClear
{
	LCDCommand( lcdCLEAR );
}
/*-----------------------------------------------------------*/

void LCDInit( void )
{
	/* Wait for proper power up. */
	_uLCDloops = LCD_STARTUP;
	Wait(_uLCDloops);

	/* Set initial states for the data and control pins */
	LATE &= 0xFF00;

	/* R/W state set low. */
    lcdRW = 0;

	/* lcdRS state set low. */
	lcdRS = 0;

	/* lcdE state set low. */
	lcdE = 0;

	/* Set data and control pins to outputs */
	TRISE &= 0xFF00;

	/* lcdRW pin set as output. */
 	RW_TRIS = 0;

	/* lcdRS pin set as output. */
	RS_TRIS = 0;

	/* lcdE pin set as output. */
	E_TRIS = 0;

	/* 1st LCD initialization sequence */
	lcdDATA &= 0xFF00;
    lcdDATA |= 0x0038;
    lcdE = 1;
    Nop();
    Nop();
    Nop();

	/* Toggle lcdE signal. */
    lcdE = 0;

	_uLCDloops = LCD_STARTUP;
	Wait(_uLCDloops);

	/* 2nd LCD initialization sequence */
	lcdDATA &= 0xFF00;
    lcdDATA |= 0x0038;
    lcdE = 1;
    Nop();
    Nop();
    Nop();

	/* Toggle lcdE signal. */
    lcdE = 0;

	_uLCDloops = LCD_STARTUP;
	Wait(_uLCDloops);

	/* 3rd LCD initialization sequence */
	lcdDATA &= 0xFF00;
    lcdDATA |= 0x0038;
    lcdE = 1;
    Nop();
    Nop();
    Nop();

	/* Toggle lcdE signal. */
    lcdE = 0;

	_uLCDloops = LCD_STARTUP;
	Wait(_uLCDloops);


	/* Function set. */
     LCDCommand( 0x38 );

	/* Display on/off control, cursor blink off (0x0C). */
     LCDCommand( 0x0C );

	/* Entry mode set (0x06). */
     LCDCommand( 0x06 );

	 LCDCommand( lcdCLEAR );
}
/*-----------------------------------------------------------*/

void Wait(unsigned int B)
{
	while(B)
	B--;
}


