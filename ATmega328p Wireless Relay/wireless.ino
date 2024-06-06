/* Name         	: wireless_relay.ino
 * Purpose      	: Driving electromagnetic relay by using Arduino kit with any wireless
 * User	         	: N@IM_0CTAL	
 * Github       	: https://github.com/naimoctal
 *  Software	: Arduino IDE
 */


long int ac=2;
long int bulb=3;
long int heater=4;
long int fan=5;
char x;
void setup()
{
pinMode(ac,OUTPUT);
pinMode(bulb,OUTPUT);
pinMode(heater,OUTPUT);
pinMode(fan,OUTPUT);
digitalWrite(ac,LOW);
digitalWrite(bulb,LOW);
digitalWrite(heater,LOW);
digitalWrite(fan,LOW);
Serial.begin(9600);
}
void loop()
{
  if(Serial.available()>0)
  {
  x=Serial.read();
  }
  if(x=='a')
  digitalWrite(ac,HIGH);
  if (x=='b')
  digitalWrite(ac,LOW);
  if (x=='c')
  digitalWrite(bulb,HIGH);
  if(x=='d')
  digitalWrite(bulb,LOW);
  if(x=='e')
  digitalWrite(heater,HIGH);
  if(x=='f')
  digitalWrite(heater,LOW);
  if(x=='g')
  digitalWrite(fan,HIGH);
  if(x=='h')
  digitalWrite(fan,LOW);
}

