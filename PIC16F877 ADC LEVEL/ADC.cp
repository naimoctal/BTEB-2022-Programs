#line 1 "C:/Users/Naim/Documents/BOOK PROJECT/TESTING/ADC.c"
unsigned int adc;
void main()
{
 ADCON1 = 0x80;
 TRISA = 0xFF;
 TRISC = 0x3F;
 TRISB = 0;
 do
 {
 adc = ADC_Read(1);

 PORTB = adc;
 PORTC = adc >> 2;
 } while(1);
}
