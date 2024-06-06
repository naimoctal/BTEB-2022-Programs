/*  Name     	: main.c
 *  Purpose  	: Main file for blinking an LED with PIC16F877A.
 *  User		: N@IM_0CTAL
 *  Github   	: https://github.com/naimoctal
 *  Software	: MPLAB IDE v8.76
 */

#include<htc.h>

// Configuration word for PIC16F877A
__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_ON & CP_OFF & BOREN_ON
         & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);

// Define LED pin
#define LED  RB0

// Define CPU Frequency
// This must be defined, if __delay_ms() or 
// __delay_us() functions are used in the code
#define _XTAL_FREQ   20000000  


void main(void)
{
	TRISB0 = 0;				   // Make RB0 pin output
	LED    = 0;				   // Make RB0 low
	
	while(1)
	{
		__delay_ms(500);       // Half sec delay
		LED = 0;               // LED off
		__delay_ms(500);       // Half sec delay
		LED = 1;               // LED on
	}
}

