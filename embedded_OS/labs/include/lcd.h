#ifndef LCD_INC_H
#define LCD_INC_H

#define 	SLOW	// for slow LCD
//#define 	FAST	// for fast LCD

#ifdef		SLOW		// for slow LCD, delays modified for the profiling part of the function Generator 
						// lab using Explorer 16 at fcy = 16MHz
// Define a fast instruction execution time in terms of loop time
// typically > 43us
#define	LCD_F_INSTR		1700 //1.04 mS measured, Explorer 16 at fcy = 16MHz

// Define a slow instruction execution time in terms of loop time
// typically > 1.35ms
#define	LCD_S_INSTR		4000// 2000 resulted at 1.22mS measured, Explorer 16 at fcy = 16MHz

// Define the startup time for the LCD in terms of loop time
// typically > 30ms
#define	LCD_STARTUP		65000   //14000  
#endif

#ifdef		FAST		// for fast LCD, delays optimized for Explorer 16 at fcy 16MHz

// Define a fast instruction execution time in terms of loop time
// typically > 43us
#define	LCD_F_INSTR		70  //42uS measured, Explorer 16 at fcy = 16MHz

// Define a slow instruction execution time in terms of loop time
// typically > 1.35ms
#define	LCD_S_INSTR		150//76 uS measured, Explorer 16 at fcy = 16MHz    

// Define the startup time for the LCD in terms of loop time
// typically > 30ms
#define	LCD_STARTUP		2000
#endif


void LCDPut( char cChar );
void LCDPos1(int);
void LCDPos2(int);
void LCDL2Home(void); 
void LCDL1Home(void); 

/*
 * Setup the peripherals required to communicate with the LCD.
 */
void LCDInit( void );

/*
 * Move to the first (0) or second (1) row of the LCD.
 */
void LCDGotoRow( unsigned short usRow );

/*
 * Write a string of text to the LCD.
 */
void LCDPutString( char *pcString );

/*
 * Clear the LCD.
 */
void LCDClear( void );
#endif /* LCD_INC_H */


