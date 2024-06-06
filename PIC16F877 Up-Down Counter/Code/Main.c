/* Name         	: main.c
 * Purpose      	: Main file for making Up/Down counter using LCD with PIC16F877 in 8bit mode.
 * User	         	: N@IM_0CTAL
 * Github       	: https://github.com/naimoctal
 * Software	: MPLAB IDE v8.76
 */

#include "Includes.h"

// Configuration word for PIC16F877
__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_ON & CP_OFF & BOREN_ON 
		& LVP_OFF & CPD_OFF & WRT_ON & DEBUG_OFF);

// Define Pins
#define  Up_Or_Down		RB2
#define  Count_In		RB3
#define  Up				1
#define  Down 			0

// Main Function
void main(void)
{
	unsigned int Count = 0;

	InitLCD();						    // Initialize LCD in 8bit mode
	
	TRISB2 = 1;							// Make PORTB2 pin input -> Up/Down Input
	TRISB3 = 1; 						// Make PORTB3 pin input -> Count input
	
	ClearLCDScreen();					// Clear LCD screen
	WriteStringToLCD("Starting...");	// Write Message on LCD
	
	__delay_ms(500);					// Some delay

	while(1)
	{
		if(Up_Or_Down == Up)	// If Up is selected
		{
			if(Count_In)		// If Count button is pressed
			{
				while(Count_In);	// Wait for de-assertion of the button
				__delay_ms(20);		// Small delay

				Count++;			// Increment Coutn value

				if(Count==100)		// If Count reaches 100
					Count = 0;		// Reset Count
			}
		}
		else if(Up_Or_Down == Down)	// If Down is selected
		{
			if(Count_In)			// If Count button is pressed
			{
				while(Count_In);	// Wait for de-assertion of the button
				__delay_ms(20);		// Small delay

				if(Count==0)		// If Count becomes zero
					Count = 99;		// Reset Count to 99
				else 
					Count--;		// Decrement Count
			}
		}

		ClearLCDScreen();			// Clear LCD screen

		// Display Count on LCD
		if(Count<10)
			WriteDataToLCD(Count+0x30);
		else
		{
			WriteDataToLCD((unsigned char)(Count/10)+0x30);
			WriteDataToLCD((unsigned char)(Count%10)+0x30);
		}

		__delay_ms(200);		// Some delay
	}
}

