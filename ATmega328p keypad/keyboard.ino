/* Name         	: keypad.ino
 * Purpose      	: Interfacing Keyboard using MCU/Arduino.
 * User	         	: N@IM_0CTAL
 * Github       	: https://github.com/naimoctal
 *  Software		: Arduino IDE
 */

#define PIN_R0 12
#define PIN_R1 11
#define PIN_R2 10
#define PIN_R3  9
#define PIN_C0  8
#define PIN_C1  7 
#define PIN_C2  6
#define PIN_C3  5
const char keys[4][4] = {
 { '1', '2', '3', 'A'},
 { '4', '5', '6', 'B' },
 { '7', '8', '9', 'C' },
 { '*', '0', '#', 'D'}
};
 // setup for reading key on a specify row r -- set PIN_Rr to 0, all other PIN_Rx to 1
void setupForReadingRow(int r) {
   digitalWrite(PIN_R0, r != 0);
   digitalWrite(PIN_R1, r != 1);
   digitalWrite(PIN_R2, r != 2);
   digitalWrite(PIN_R3, r != 3);
}
// read which column with key press; -1 if none
int readColumnOfKeyPress() {
 int c0 = digitalRead(PIN_C0);
 int c1 = digitalRead(PIN_C1);
 int c2 = digitalRead(PIN_C2);
 int c3 = digitalRead(PIN_C3);
 int c = -1;
 if (c0 == 0) {
   c = 0;
 } else if (c1 == 0) {
   c = 1;
 } else if (c2 == 0) {
   c = 2;
 } else if (c3 == 0) {
   c = 3;
 }
 return c;
}
void setup() {
 pinMode(PIN_R0, OUTPUT);
 pinMode(PIN_R1, OUTPUT);
 pinMode(PIN_R2, OUTPUT);
 pinMode(PIN_R3, OUTPUT);
 pinMode(PIN_C0, INPUT_PULLUP);
 pinMode(PIN_C1, INPUT_PULLUP);
 pinMode(PIN_C2, INPUT_PULLUP);
 pinMode(PIN_C3, INPUT_PULLUP);
 Serial.begin(115200);
}
void promptForKeyPressOnRow(int r) {
 Serial.println(String("press a key on row ") + String(r) + String(":"));
 setupForReadingRow(r);
 while (true) {
   int c = readColumnOfKeyPress();
   if (c != -1) {
     char key = keys[r][c];
     Serial.println(String("- you pressed [") + String(key) + String("]"));
     break;
   }   
 }
}
void loop() {
 promptForKeyPressOnRow(0);
 promptForKeyPressOnRow(1);
 promptForKeyPressOnRow(2);
 promptForKeyPressOnRow(3);
}
