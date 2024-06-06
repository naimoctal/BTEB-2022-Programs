
_main:

;ADC.c,2 :: 		void main()
;ADC.c,4 :: 		ADCON1 = 0x80;
	MOVLW      128
	MOVWF      ADCON1+0
;ADC.c,5 :: 		TRISA = 0xFF; // PORTA is input
	MOVLW      255
	MOVWF      TRISA+0
;ADC.c,6 :: 		TRISC = 0x3F; // Pins RC7, RC6 are outputs
	MOVLW      63
	MOVWF      TRISC+0
;ADC.c,7 :: 		TRISB = 0;    // PORTB is output
	CLRF       TRISB+0
;ADC.c,8 :: 		do
L_main0:
;ADC.c,10 :: 		adc = ADC_Read(1); // Get 10-bit results of AD conversion
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _adc+0
	MOVF       R0+1, 0
	MOVWF      _adc+1
;ADC.c,12 :: 		PORTB = adc;      // Send lower 8 bits to PORTB
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;ADC.c,13 :: 		PORTC = adc >> 2; // Send 2 most significant                  //bits to RC7, RC6
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	MOVWF      R2+1
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	MOVF       R2+0, 0
	MOVWF      PORTC+0
;ADC.c,14 :: 		} while(1);
	GOTO       L_main0
;ADC.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
