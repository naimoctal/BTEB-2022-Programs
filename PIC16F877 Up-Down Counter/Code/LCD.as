opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F877
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 11 "C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 11 "C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\Main.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_InitLCD
	FNCALL	_main,_ClearLCDScreen
	FNCALL	_main,_WriteStringToLCD
	FNCALL	_main,_WriteDataToLCD
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	_ClearLCDScreen,_WriteCommandToLCD
	FNCALL	_WriteStringToLCD,_WriteDataToLCD
	FNCALL	_InitLCD,_WriteCommandToLCD
	FNCALL	_WriteDataToLCD,_ToggleEpinOfLCD
	FNCALL	_WriteCommandToLCD,_ToggleEpinOfLCD
	FNROOT	_main
	global	_PORTD
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:
_PORTD	set	8
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_TRISD
_TRISD	set	136
	global	_TRISB2
_TRISB2	set	1074
	global	_TRISB3
_TRISB3	set	1075
	global	_TRISB4
_TRISB4	set	1076
	global	_TRISB5
_TRISB5	set	1077
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	file	"LCD.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_ToggleEpinOfLCD
?_ToggleEpinOfLCD:	; 0 bytes @ 0x0
	global	??_ToggleEpinOfLCD
??_ToggleEpinOfLCD:	; 0 bytes @ 0x0
	global	?_WriteCommandToLCD
?_WriteCommandToLCD:	; 0 bytes @ 0x0
	global	?_WriteDataToLCD
?_WriteDataToLCD:	; 0 bytes @ 0x0
	global	?_InitLCD
?_InitLCD:	; 0 bytes @ 0x0
	global	?_WriteStringToLCD
?_WriteStringToLCD:	; 0 bytes @ 0x0
	global	?_ClearLCDScreen
?_ClearLCDScreen:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_WriteCommandToLCD
??_WriteCommandToLCD:	; 0 bytes @ 0x2
	global	??_WriteDataToLCD
??_WriteDataToLCD:	; 0 bytes @ 0x2
	global	WriteCommandToLCD@Command
WriteCommandToLCD@Command:	; 1 bytes @ 0x2
	global	WriteDataToLCD@LCDChar
WriteDataToLCD@LCDChar:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_InitLCD
??_InitLCD:	; 0 bytes @ 0x3
	global	??_WriteStringToLCD
??_WriteStringToLCD:	; 0 bytes @ 0x3
	global	??_ClearLCDScreen
??_ClearLCDScreen:	; 0 bytes @ 0x3
	global	WriteStringToLCD@s
WriteStringToLCD@s:	; 1 bytes @ 0x3
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x7
	ds	3
	global	main@Count
main@Count:	; 2 bytes @ 0xA
	ds	2
;;Data sizes: Strings 12, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      12
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; WriteStringToLCD@s	PTR const unsigned char  size(1) Largest target is 12
;;		 -> STR_1(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___lwdiv
;;   _ClearLCDScreen->_WriteCommandToLCD
;;   _WriteStringToLCD->_WriteDataToLCD
;;   _InitLCD->_WriteCommandToLCD
;;   _WriteDataToLCD->_ToggleEpinOfLCD
;;   _WriteCommandToLCD->_ToggleEpinOfLCD
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 5     5      0     390
;;                                              7 COMMON     5     5      0
;;                            _InitLCD
;;                     _ClearLCDScreen
;;                   _WriteStringToLCD
;;                     _WriteDataToLCD
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _ClearLCDScreen                                       2     2      0      15
;;                                              3 COMMON     2     2      0
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (1) _WriteStringToLCD                                     1     1      0      45
;;                                              3 COMMON     1     1      0
;;                     _WriteDataToLCD
;; ---------------------------------------------------------------------------------
;; (1) _InitLCD                                              3     3      0      15
;;                                              3 COMMON     3     3      0
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (1) _WriteDataToLCD                                       1     1      0      15
;;                                              2 COMMON     1     1      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (2) _WriteCommandToLCD                                    1     1      0      15
;;                                              2 COMMON     1     1      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (2) _ToggleEpinOfLCD                                      2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) ___lwmod                                              5     1      4     105
;;                                              0 COMMON     5     1      4
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              7     3      4     105
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _InitLCD
;;     _WriteCommandToLCD
;;       _ToggleEpinOfLCD
;;   _ClearLCDScreen
;;     _WriteCommandToLCD
;;       _ToggleEpinOfLCD
;;   _WriteStringToLCD
;;     _WriteDataToLCD
;;       _ToggleEpinOfLCD
;;   _WriteDataToLCD
;;     _ToggleEpinOfLCD
;;   ___lwdiv
;;   ___lwmod
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      C       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 22 in file "C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Count           2   10[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_InitLCD
;;		_ClearLCDScreen
;;		_WriteStringToLCD
;;		_WriteDataToLCD
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\Main.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	23
	
l2472:	
;Main.c: 23: unsigned int Count = 0;
	clrf	(main@Count)
	clrf	(main@Count+1)
	line	25
	
l2474:	
;Main.c: 25: InitLCD();
	fcall	_InitLCD
	line	27
	
l2476:	
;Main.c: 27: TRISB2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1074/8)^080h,(1074)&7
	line	28
	
l2478:	
;Main.c: 28: TRISB3 = 1;
	bsf	(1075/8)^080h,(1075)&7
	line	30
	
l2480:	
;Main.c: 30: ClearLCDScreen();
	fcall	_ClearLCDScreen
	line	31
	
l2482:	
;Main.c: 31: WriteStringToLCD("Starting...");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	line	33
	
l2484:	
;Main.c: 33: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u197:
	decfsz	((??_main+0)+0),f
	goto	u197
	decfsz	((??_main+0)+0+1),f
	goto	u197
	decfsz	((??_main+0)+0+2),f
	goto	u197
	clrwdt
opt asmopt_on

	line	37
	
l2486:	
;Main.c: 36: {
;Main.c: 37: if(RB2 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u101
	goto	u100
u101:
	goto	l1313
u100:
	line	39
	
l2488:	
;Main.c: 38: {
;Main.c: 39: if(RB3)
	btfss	(51/8),(51)&7
	goto	u111
	goto	u110
u111:
	goto	l2512
u110:
	line	41
	
l1315:	
	btfsc	(51/8),(51)&7
	goto	u121
	goto	u120
u121:
	goto	l1315
u120:
	line	42
	
l2492:	
;Main.c: 42: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
u207:
	decfsz	((??_main+0)+0),f
	goto	u207
	decfsz	((??_main+0)+0+1),f
	goto	u207
	nop2
opt asmopt_on

	line	44
	
l2494:	
;Main.c: 44: Count++;
	incf	(main@Count),f
	skipnz
	incf	(main@Count+1),f
	line	46
	
l2496:	
;Main.c: 46: if(Count==100)
		movf	(main@Count),w
	xorlw	100
	iorwf	(main@Count+1),w

	skipz
	goto	u131
	goto	u130
u131:
	goto	l2512
u130:
	line	47
	
l2498:	
;Main.c: 47: Count = 0;
	clrf	(main@Count)
	clrf	(main@Count+1)
	goto	l2512
	line	50
	
l1313:	
;Main.c: 50: else if(RB2 == 0)
	btfsc	(50/8),(50)&7
	goto	u141
	goto	u140
u141:
	goto	l2512
u140:
	line	52
	
l2500:	
;Main.c: 51: {
;Main.c: 52: if(RB3)
	btfss	(51/8),(51)&7
	goto	u151
	goto	u150
u151:
	goto	l2512
u150:
	line	54
	
l1322:	
	btfsc	(51/8),(51)&7
	goto	u161
	goto	u160
u161:
	goto	l1322
u160:
	line	55
	
l2504:	
;Main.c: 55: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
u217:
	decfsz	((??_main+0)+0),f
	goto	u217
	decfsz	((??_main+0)+0+1),f
	goto	u217
	nop2
opt asmopt_on

	line	57
	
l2506:	
;Main.c: 57: if(Count==0)
	movf	((main@Count+1)),w
	iorwf	((main@Count)),w
	skipz
	goto	u171
	goto	u170
u171:
	goto	l2510
u170:
	line	58
	
l2508:	
;Main.c: 58: Count = 99;
	movlw	063h
	movwf	(main@Count)
	clrf	(main@Count+1)
	goto	l2512
	line	60
	
l2510:	
;Main.c: 59: else
;Main.c: 60: Count--;
	movlw	low(01h)
	subwf	(main@Count),f
	movlw	high(01h)
	skipc
	decf	(main@Count+1),f
	subwf	(main@Count+1),f
	line	64
	
l2512:	
;Main.c: 61: }
;Main.c: 62: }
;Main.c: 64: ClearLCDScreen();
	fcall	_ClearLCDScreen
	line	67
	
l2514:	
;Main.c: 67: if(Count<10)
	movlw	high(0Ah)
	subwf	(main@Count+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(main@Count),w
	skipnc
	goto	u181
	goto	u180
u181:
	goto	l2518
u180:
	line	68
	
l2516:	
;Main.c: 68: WriteDataToLCD(Count+0x30);
	movf	(main@Count),w
	addlw	030h
	fcall	_WriteDataToLCD
	goto	l2520
	line	71
	
l2518:	
;Main.c: 69: else
;Main.c: 70: {
;Main.c: 71: WriteDataToLCD((unsigned char)(Count/10)+0x30);
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(main@Count+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(main@Count),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	72
;Main.c: 72: WriteDataToLCD((unsigned char)(Count%10)+0x30);
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(main@Count+1),w
	movwf	1+(?___lwmod)+02h
	movf	(main@Count),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	75
	
l2520:	
;Main.c: 73: }
;Main.c: 75: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u227:
	decfsz	((??_main+0)+0),f
	goto	u227
	decfsz	((??_main+0)+0+1),f
	goto	u227
	decfsz	((??_main+0)+0+2),f
	goto	u227
	nop2
opt asmopt_on

	goto	l2486
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	77
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ClearLCDScreen
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:

;; *************** function _ClearLCDScreen *****************
;; Defined at:
;;		line 68 in file "C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_WriteCommandToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text86
	file	"C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\LCD.c"
	line	68
	global	__size_of_ClearLCDScreen
	__size_of_ClearLCDScreen	equ	__end_of_ClearLCDScreen-_ClearLCDScreen
	
_ClearLCDScreen:	
	opt	stack 5
; Regs used in _ClearLCDScreen: [wreg+status,2+status,0+pclath+cstack]
	line	69
	
l2468:	
;LCD.c: 69: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	70
	
l2470:	
;LCD.c: 70: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_ClearLCDScreen+0)+0+1),f
	movlw	251
movwf	((??_ClearLCDScreen+0)+0),f
u237:
	decfsz	((??_ClearLCDScreen+0)+0),f
	goto	u237
	decfsz	((??_ClearLCDScreen+0)+0+1),f
	goto	u237
	nop2
opt asmopt_on

	line	71
	
l661:	
	return
	opt stack 0
GLOBAL	__end_of_ClearLCDScreen
	__end_of_ClearLCDScreen:
;; =============== function _ClearLCDScreen ends ============

	signat	_ClearLCDScreen,88
	global	_WriteStringToLCD
psect	text87,local,class=CODE,delta=2
global __ptext87
__ptext87:

;; *************** function _WriteStringToLCD *****************
;; Defined at:
;;		line 61 in file "C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  s               1    3[COMMON] PTR const unsigned char 
;;		 -> STR_1(12), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_WriteDataToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text87
	file	"C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\LCD.c"
	line	61
	global	__size_of_WriteStringToLCD
	__size_of_WriteStringToLCD	equ	__end_of_WriteStringToLCD-_WriteStringToLCD
	
_WriteStringToLCD:	
	opt	stack 5
; Regs used in _WriteStringToLCD: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;WriteStringToLCD@s stored from wreg
	movwf	(WriteStringToLCD@s)
	line	62
	
l2460:	
;LCD.c: 62: while(*s)
	goto	l2466
	line	63
	
l2462:	
;LCD.c: 63: WriteDataToLCD(*s++);
	movf	(WriteStringToLCD@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_WriteDataToLCD
	
l2464:	
	incf	(WriteStringToLCD@s),f
	line	62
	
l2466:	
	movf	(WriteStringToLCD@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u91
	goto	u90
u91:
	goto	l2462
u90:
	line	64
	
l658:	
	return
	opt stack 0
GLOBAL	__end_of_WriteStringToLCD
	__end_of_WriteStringToLCD:
;; =============== function _WriteStringToLCD ends ============

	signat	_WriteStringToLCD,4216
	global	_InitLCD
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:

;; *************** function _InitLCD *****************
;; Defined at:
;;		line 30 in file "C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_WriteCommandToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text88
	file	"C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\LCD.c"
	line	30
	global	__size_of_InitLCD
	__size_of_InitLCD	equ	__end_of_InitLCD-_InitLCD
	
_InitLCD:	
	opt	stack 5
; Regs used in _InitLCD: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l2430:	
;LCD.c: 32: RB5 = 0;
	bcf	(53/8),(53)&7
	line	33
;LCD.c: 33: RB4 = 0;
	bcf	(52/8),(52)&7
	line	34
	
l2432:	
;LCD.c: 34: PORTD = 0;
	clrf	(8)	;volatile
	line	35
	
l2434:	
;LCD.c: 35: TRISB5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7
	line	36
	
l2436:	
;LCD.c: 36: TRISB4 = 0;
	bcf	(1076/8)^080h,(1076)&7
	line	37
;LCD.c: 37: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	40
	
l2438:	
;LCD.c: 40: _delay((unsigned long)((40)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_InitLCD+0)+0+2),f
movlw	4
movwf	((??_InitLCD+0)+0+1),f
	movlw	186
movwf	((??_InitLCD+0)+0),f
u247:
	decfsz	((??_InitLCD+0)+0),f
	goto	u247
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u247
	decfsz	((??_InitLCD+0)+0+2),f
	goto	u247
	clrwdt
opt asmopt_on

	line	41
	
l2440:	
;LCD.c: 41: WriteCommandToLCD(0x30);
	movlw	(030h)
	fcall	_WriteCommandToLCD
	line	43
	
l2442:	
;LCD.c: 43: _delay((unsigned long)((6)*(20000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_InitLCD+0)+0+1),f
	movlw	245
movwf	((??_InitLCD+0)+0),f
u257:
	decfsz	((??_InitLCD+0)+0),f
	goto	u257
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u257
opt asmopt_on

	line	44
	
l2444:	
;LCD.c: 44: WriteCommandToLCD(0x30);
	movlw	(030h)
	fcall	_WriteCommandToLCD
	line	46
	
l2446:	
;LCD.c: 46: _delay((unsigned long)((300)*(20000000/4000000.0)));
	opt asmopt_off
movlw	214
movwf	(??_InitLCD+0)+0,f
u267:
	nop2
	nop2
decfsz	(??_InitLCD+0)+0,f
	goto	u267
	clrwdt
opt asmopt_on

	line	47
	
l2448:	
;LCD.c: 47: WriteCommandToLCD(0x30);
	movlw	(030h)
	fcall	_WriteCommandToLCD
	line	49
	
l2450:	
;LCD.c: 49: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_InitLCD+0)+0+1),f
	movlw	251
movwf	((??_InitLCD+0)+0),f
u277:
	decfsz	((??_InitLCD+0)+0),f
	goto	u277
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u277
	nop2
opt asmopt_on

	line	52
	
l2452:	
;LCD.c: 52: WriteCommandToLCD(0x38);
	movlw	(038h)
	fcall	_WriteCommandToLCD
	line	53
	
l2454:	
;LCD.c: 53: WriteCommandToLCD(0x0c);
	movlw	(0Ch)
	fcall	_WriteCommandToLCD
	line	54
	
l2456:	
;LCD.c: 54: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	55
	
l2458:	
;LCD.c: 55: WriteCommandToLCD(0x06);
	movlw	(06h)
	fcall	_WriteCommandToLCD
	line	56
	
l652:	
	return
	opt stack 0
GLOBAL	__end_of_InitLCD
	__end_of_InitLCD:
;; =============== function _InitLCD ends ============

	signat	_InitLCD,88
	global	_WriteDataToLCD
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:

;; *************** function _WriteDataToLCD *****************
;; Defined at:
;;		line 22 in file "C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDChar         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDChar         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_WriteStringToLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text89
	file	"C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\LCD.c"
	line	22
	global	__size_of_WriteDataToLCD
	__size_of_WriteDataToLCD	equ	__end_of_WriteDataToLCD-_WriteDataToLCD
	
_WriteDataToLCD:	
	opt	stack 6
; Regs used in _WriteDataToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteDataToLCD@LCDChar stored from wreg
	movwf	(WriteDataToLCD@LCDChar)
	line	23
	
l2424:	
;LCD.c: 23: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	line	24
	
l2426:	
;LCD.c: 24: PORTD = LCDChar;
	movf	(WriteDataToLCD@LCDChar),w
	movwf	(8)	;volatile
	line	26
	
l2428:	
;LCD.c: 26: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	27
	
l649:	
	return
	opt stack 0
GLOBAL	__end_of_WriteDataToLCD
	__end_of_WriteDataToLCD:
;; =============== function _WriteDataToLCD ends ============

	signat	_WriteDataToLCD,4216
	global	_WriteCommandToLCD
psect	text90,local,class=CODE,delta=2
global __ptext90
__ptext90:

;; *************** function _WriteCommandToLCD *****************
;; Defined at:
;;		line 14 in file "C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  Command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Command         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_InitLCD
;;		_ClearLCDScreen
;; This function uses a non-reentrant model
;;
psect	text90
	file	"C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\LCD.c"
	line	14
	global	__size_of_WriteCommandToLCD
	__size_of_WriteCommandToLCD	equ	__end_of_WriteCommandToLCD-_WriteCommandToLCD
	
_WriteCommandToLCD:	
	opt	stack 5
; Regs used in _WriteCommandToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteCommandToLCD@Command stored from wreg
	movwf	(WriteCommandToLCD@Command)
	line	15
	
l2418:	
;LCD.c: 15: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	line	16
	
l2420:	
;LCD.c: 16: PORTD = Command;
	movf	(WriteCommandToLCD@Command),w
	movwf	(8)	;volatile
	line	18
	
l2422:	
;LCD.c: 18: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	19
	
l646:	
	return
	opt stack 0
GLOBAL	__end_of_WriteCommandToLCD
	__end_of_WriteCommandToLCD:
;; =============== function _WriteCommandToLCD ends ============

	signat	_WriteCommandToLCD,4216
	global	_ToggleEpinOfLCD
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:

;; *************** function _ToggleEpinOfLCD *****************
;; Defined at:
;;		line 5 in file "C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WriteCommandToLCD
;;		_WriteDataToLCD
;; This function uses a non-reentrant model
;;
psect	text91
	file	"C:\Users\Saeed\Desktop\PIC16F877 Up-Down Counter Code\Code\LCD.c"
	line	5
	global	__size_of_ToggleEpinOfLCD
	__size_of_ToggleEpinOfLCD	equ	__end_of_ToggleEpinOfLCD-_ToggleEpinOfLCD
	
_ToggleEpinOfLCD:	
	opt	stack 6
; Regs used in _ToggleEpinOfLCD: [wreg]
	line	6
	
l2412:	
;LCD.c: 6: RB5 = 1;
	bsf	(53/8),(53)&7
	line	7
	
l2414:	
;LCD.c: 7: _delay((unsigned long)((500)*(20000000/4000000.0)));
	opt asmopt_off
movlw	4
movwf	((??_ToggleEpinOfLCD+0)+0+1),f
	movlw	61
movwf	((??_ToggleEpinOfLCD+0)+0),f
u287:
	decfsz	((??_ToggleEpinOfLCD+0)+0),f
	goto	u287
	decfsz	((??_ToggleEpinOfLCD+0)+0+1),f
	goto	u287
	nop2
opt asmopt_on

	line	8
	
l2416:	
;LCD.c: 8: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	line	9
;LCD.c: 9: _delay((unsigned long)((500)*(20000000/4000000.0)));
	opt asmopt_off
movlw	4
movwf	((??_ToggleEpinOfLCD+0)+0+1),f
	movlw	61
movwf	((??_ToggleEpinOfLCD+0)+0),f
u297:
	decfsz	((??_ToggleEpinOfLCD+0)+0),f
	goto	u297
	decfsz	((??_ToggleEpinOfLCD+0)+0+1),f
	goto	u297
	nop2
opt asmopt_on

	line	10
	
l643:	
	return
	opt stack 0
GLOBAL	__end_of_ToggleEpinOfLCD
	__end_of_ToggleEpinOfLCD:
;; =============== function _ToggleEpinOfLCD ends ============

	signat	_ToggleEpinOfLCD,88
	global	___lwmod
psect	text92,local,class=CODE,delta=2
global __ptext92
__ptext92:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text92
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 7
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2392:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u51
	goto	u50
u51:
	goto	l2408
u50:
	line	9
	
l2394:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l2398
	line	11
	
l2396:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l2398:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u61
	goto	u60
u61:
	goto	l2396
u60:
	line	15
	
l2400:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u75
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u75:
	skipc
	goto	u71
	goto	u70
u71:
	goto	l2404
u70:
	line	16
	
l2402:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l2404:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l2406:	
	decfsz	(___lwmod@counter),f
	goto	u81
	goto	u80
u81:
	goto	l2400
u80:
	line	20
	
l2408:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l1997:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text93,local,class=CODE,delta=2
global __ptext93
__ptext93:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMMON] unsigned int 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text93
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2366:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l2368:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u11
	goto	u10
u11:
	goto	l2388
u10:
	line	11
	
l2370:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l2374
	line	13
	
l2372:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l2374:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u21
	goto	u20
u21:
	goto	l2372
u20:
	line	17
	
l2376:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l2378:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u35
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u35:
	skipc
	goto	u31
	goto	u30
u31:
	goto	l2384
u30:
	line	19
	
l2380:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2382:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l2384:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l2386:	
	decfsz	(___lwdiv@counter),f
	goto	u41
	goto	u40
u41:
	goto	l2376
u40:
	line	25
	
l2388:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l1987:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
