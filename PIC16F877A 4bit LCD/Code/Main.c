/* Name         	: main.c
 * Purpose      	: Interfacing 7 segment Display with PIC Microcontroller
 * User	         	: N@IM_0CTAL
 * Github       	: https://github.com/naimoctal
 * Software			: MPLAB IDE v8.76
 */

#include "Includes.h"

// Configuration word for PIC16F877A
__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_ON & CP_OFF & BOREN_ON
         & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);

// Main Function
void main(void)
{
	InitLCD();						    // Initialize LCD in 4bit mode
	
	ClearLCDScreen();					// Clear LCD screen
	WriteStringToLCD("Hello World!");	// Write Hello World on LCD
	
	while(1)
	{
	}
}

