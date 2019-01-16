/* Init board bits and functions
 *		
 *   *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Author        	Date      			Comments on this revision		
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Serge Hould		Jan. 15 2019        v1.0    dspic33 
 *
 **********************************************************************/


// ****************************************************************************
// ****************************************************************************
// Section: Configuration Bits
// ****************************************************************************
// ****************************************************************************
// FBS
#pragma config BWRP = WRPROTECT_OFF     // Boot Segment Write Protect (Boot Segment may be written)
#pragma config BSS = NO_FLASH           // Boot Segment Program Flash Code Protection (No Boot program Flash segment)
#pragma config RBS = NO_RAM             // Boot Segment RAM Protection (No Boot RAM)

// FSS
#pragma config SWRP = WRPROTECT_OFF     // Secure Segment Program Write Protect (Secure Segment may be written)
#pragma config SSS = NO_FLASH           // Secure Segment Program Flash Code Protection (No Secure Segment)
#pragma config RSS = NO_RAM             // Secure Segment Data RAM Protection (No Secure RAM)

// FGS
#pragma config GWRP = OFF               // General Code Segment Write Protect (User program memory is not write-protected)
#pragma config GSS = OFF                // General Segment Code Protection (User program memory is not code-protected)

// FOSCSEL
//#pragma config FNOSC = FRC              // Oscillator Mode (Internal Fast RC (FRC))
#pragma config FNOSC = PRI              // Oscillator Mode (CRYSTAL 8 MHZ)
#pragma config IESO = OFF               // Two-speed Oscillator Start-Up Enable (Start up with user-selected oscillator)

// FOSC
//#pragma config POSCMD = NONE            // Primary Oscillator Source (Primary Oscillator Disabled)
#pragma config POSCMD = HS            // Primary Oscillator Source (HS)
//#pragma config OSCIOFNC = ON            // OSC2 Pin Function (OSC2 pin has digital I/O function)
#pragma config OSCIOFNC = OFF            // OSC2 Pin Function (OSC2 pin )
#pragma config FCKSM = CSECMD           // Clock Switching and Monitor (Both Clock Switching and Fail-Safe Clock Monitor are disabled)

// FWDT
#pragma config WDTPOST = PS32768        // Watchdog Timer Postscaler (1:32,768)
#pragma config WDTPRE = PR128           // WDT Prescaler (1:128)
#pragma config PLLKEN = ON              // PLL Lock Enable bit (Clock switch to PLL source will wait until the PLL lock signal is valid.)
#pragma config WINDIS = OFF             // Watchdog Timer Window (Watchdog Timer in Non-Window mode)
#pragma config FWDTEN = OFF             // Watchdog Timer Enable (Watchdog timer enabled/disabled by user software)
#pragma config JTAGEN = OFF    // JTAG Port Enable->JTAG port is enabled

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include "initBoard.h"
#include "public.h"

void OSCILLATOR_Initialize(void)
{
    // Configure PLL prescaler, PLL postscaler, PLL divisor
    //  fosc = 8MHz * M/(N1*N2)
    //  fosc = 8 *40 / (2*4)= 40 MHz
    // MIPS = fcy= fosc /2 = 20 MHz
    PLLFBD=38; // M = 40-2
    //CLKDIVbits.PLLPOST = 0; // N2 = 2 // For 80 MHz
    CLKDIVbits.PLLPOST = 1; // N2 = 4
    CLKDIVbits.PLLPRE = 0; // N1 = 2
        // Initiate Clock Switch to Primary Oscillator with PLL (NOSC = 0b011)
    __builtin_write_OSCCONH(0x03);
    __builtin_write_OSCCONL(0x01);

    // Wait for Clock switch to occur
    while (OSCCONbits.COSC != 0b011);

    // Wait for PLL to lock
    while(OSCCONbits.LOCK != 1);  
}


// Use this function to setup I/Os
void initIO(void)
{
       
}