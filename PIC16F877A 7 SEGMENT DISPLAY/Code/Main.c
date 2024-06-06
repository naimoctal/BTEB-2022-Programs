/* Name         	: main.c
 * Purpose      	: Interfacing 7 segment Display with PIC Microcontroller
 * User	         	: N@IM_0CTAL
 * Github       	: https://github.com/naimoctal
 * Software			: MPLAB IDE v8.76
 */

#include<htc.h>

// Pin description
/* PORTB is used for 7 segment
RB0 is attached with 'A' segment 
RB1 is attached with 'B' segment 
RB2 is attached with 'C' segment 
RB3 is attached with 'D' segment 
RB4 is attached with 'E' segment 
RB5 is attached with 'F' segment 
RB6 is attached with 'G' segment 
*/

// Configuration word for PIC16F877A
__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_ON & CP_OFF & BOREN_ON
         & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);

// Define CPU Frequency
// This must be defined, if __delay_ms() or 
// __delay_us() functions are used in the code
#define _XTAL_FREQ   20000000  


// Display on seven segment function
void DisplayOn7Segment(char ch)   // ch can have a value from '0' to 'F' only
{
	switch(ch)
	{
		case '0':	PORTB = 0x3F;  break;
		case '1':	PORTB = 0x06;  break;
		case '2':	PORTB = 0x5B;  break;
		case '3':	PORTB = 0x4F;  break;
		case '4':	PORTB = 0x66;  break;
		case '5':	PORTB = 0x6D;  break;
		case '6':	PORTB = 0x7D;  break;
		case '7':	PORTB = 0x07;  break;
		case '8':	PORTB = 0x7F;  break;
		case '9':	PORTB = 0x6F;  break;
		case 'A':	PORTB = 0x77;  break;
		case 'B':	PORTB = 0x7C;  break;
		case 'C':	PORTB = 0x39;  break;
		case 'D':	PORTB = 0x5E;  break;
		case 'E':	PORTB = 0x79;  break;
		case 'F':	PORTB = 0x71;  break;

		default: PORTB = 0x3F;  break;
	}	
}


// Main function
void main()
{	
	char ch = '0';	          // Character to be displayed on 7seg

	TRISB = 0x00;			   // Make PORTB pins output
	PORTB = 0x00;			   // Make PORTB pins low	
	
	while(1)
	{
		DisplayOn7Segment(ch);	  // Display ch on 7seg
		__delay_ms(1000);         // One sec delay

		switch(ch)				  // Update ch with new value to be displayed
		{
			case '0':	ch = '1';  break;
			case '1':	ch = '2';  break;
			case '2':	ch = '3';  break;
			case '3':	ch = '4';  break;
			case '4':	ch = '5';  break;
			case '5':	ch = '6';  break;
			case '6':	ch = '7';  break;
			case '7':	ch = '8';  break;
			case '8':	ch = '9';  break;
			case '9':	ch = 'A';  break;
			case 'A':	ch = 'B';  break;
			case 'B':	ch = 'C';  break;
			case 'C':	ch = 'D';  break;
			case 'D':	ch = 'E';  break;
			case 'E':	ch = 'F';  break;
			case 'F':	ch = '0';  break;

			default: ch = '0';  break;
		}
	}
}

