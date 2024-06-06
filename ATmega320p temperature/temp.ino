/* Name         	: temperature.ino
 * Purpose      	: Interfacing temperature sensor by using Arduino kit
 * User	         	: N@IM_0CTAL	
 * Github       	: https://github.com/naimoctal
 *  Software	: Arduino IDE
 */


#include <LiquidCrystal.h>
float temp;
int sensor = A0;
float tempc;
float tempf;

LiquidCrystal lcd (12, 11, 5, 4, 3, 2);

//The instance of the LiquidCrystal lcd shows LCD pins connected to the Arduino digital outputs.

void setup () {
// set the number of columns and the number of lines of lcd
lcd.begin (16, 2);
}

void loop () {
temp=analogRead(sensor);

//Read analog voltage from sensor and store it in a temporary float variable.

tempc=(temp*4.88)/10;

//This line converts float value into °C.

tempf=(tempc*1.8)+32;

//This line converts °C into Fahrenheit.

lcd.setCursor(0,0);
lcd.print("Temp in C = ");
lcd.println(tempc);

//These two lines print Temperature value in °C.
lcd.setCursor(0,1);
lcd.print("Temp in F = ");
lcd.println(tempf);

//Above two lines print value in Fahrenheit
}
