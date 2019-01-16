/* ADC converter functions
 *		
 *   *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Author        	Date      			Comments on this revision		
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Serge Hould		December 15 2016    v1.1  pic24
 * Serge Hould		Jan. 15 2019        v2.0    port to dspic33
 *
 *
 **********************************************************************/

#include "adc.h"

// initialize the ADC for single conversion, select Analog input pins
void initADC(void) 
{
    //NEW
    	/* set port configuration here */ 		
 	AD1PCFGLbits.PCFG4 = 0;         // ensure AN4/RB4 is analog (Temp Sensor)
 	AD1PCFGLbits.PCFG5 = 0;         // ensure AN5/RB5 is analog (Analog Pot)

    //AD1PCFGL = amask;    // select analog input pins
    AD1CON1 = 0b0000010011100000;   // auto convert after end of sampling  0b0000 0000 1110 0000=0x00E0  pour non-signé et 10 bits
																		//  0b0000 0101 1110 0000  pour signé et 12 bits
    AD1CSSL = 0;        // no scanning required 
    AD1CON3 = 0x1F02;   // max sample time = 31Tad, Tad = 2 x Tcy = 125ns >75ns
    AD1CON2 = 0;        // use MUXA, AVss and AVdd are used as Vref+/-
    AD1CON1bits.ADON = 1; // turn on the ADC
} //initADC


int readADC( int ch)
{
    AD1CHS0  = ch;               // select analog input channel
    AD1CON1bits.SAMP = 1;       // start sampling, automatic conversion will follow
     while (!AD1CON1bits.DONE);   // wait to complete the conversion
    return ADC1BUF0;            // read the conversion result
} // readADC

