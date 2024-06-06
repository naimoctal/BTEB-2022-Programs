
// Function Declarations for Generic Functions.c

#ifndef __LCD
#define __LCD

// Define Pins
#define LCD_E    		RB5   // Enable pin for LCD
#define LCD_RS	 		RB4   // RS pin for LCD
#define LCD_Data_Bus 	PORTD // Data bus for LCD

// Define Pins direction registrers
#define LCD_E_Dir     		TRISB5
#define LCD_RS_Dir   	 	TRISB4
#define LCD_Data_Bus_Dir 	TRISD

// Constants
#define E_Delay       500  


// Function Declarations
void WriteCommandToLCD(unsigned char);
void WriteDataToLCD(char);
void InitLCD(void);
void WriteStringToLCD(const char*);
void ClearLCDScreen(void);


#endif