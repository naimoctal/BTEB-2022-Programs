opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F877A
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
# 22 "C:\Users\Saeed\Desktop\PIC16F877A Free Running Counter\Code\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 22 "C:\Users\Saeed\Desktop\PIC16F877A Free Running Counter\Code\Main.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_DisplayOn7Segment
	FNROOT	_main
	global	_PORTB
psect	text35,local,class=CODE,delta=2
global __ptext35
__ptext35:
_PORTB	set	6
	global	_TRISB
_TRISB	set	134
	file	"Counter.as"
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
	global	?_DisplayOn7Segment
?_DisplayOn7Segment:	; 0 bytes @ 0x0
	global	??_DisplayOn7Segment
??_DisplayOn7Segment:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	DisplayOn7Segment@ch
DisplayOn7Segment@ch:	; 1 bytes @ 0x0
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x1
	ds	3
	global	main@ch
main@ch:	; 1 bytes @ 0x4
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       5
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_DisplayOn7Segment
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
;; (0) _main                                                 4     4      0      45
;;                                              1 COMMON     4     4      0
;;                  _DisplayOn7Segment
;; ---------------------------------------------------------------------------------
;; (1) _DisplayOn7Segment                                    1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _DisplayOn7Segment
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       5       1       35.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
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
;;		line 60 in file "C:\Users\Saeed\Desktop\PIC16F877A Free Running Counter\Code\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ch              1    4[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DisplayOn7Segment
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Saeed\Desktop\PIC16F877A Free Running Counter\Code\Main.c"
	line	60
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	61
	
l1818:	
;Main.c: 61: char ch = '0';
	movlw	(030h)
	movwf	(main@ch)
	line	63
	
l1820:	
;Main.c: 63: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	64
	
l1822:	
;Main.c: 64: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	68
	
l1824:	
;Main.c: 67: {
;Main.c: 68: DisplayOn7Segment(ch);
	movf	(main@ch),w
	fcall	_DisplayOn7Segment
	line	69
	
l1826:	
;Main.c: 69: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_main+0)+0+2),f
movlw	94
movwf	((??_main+0)+0+1),f
	movlw	134
movwf	((??_main+0)+0),f
u17:
	decfsz	((??_main+0)+0),f
	goto	u17
	decfsz	((??_main+0)+0+1),f
	goto	u17
	decfsz	((??_main+0)+0+2),f
	goto	u17
	clrwdt
opt asmopt_on

	line	71
;Main.c: 71: switch(ch)
	goto	l1864
	line	73
	
l1828:	
	movlw	(031h)
	movwf	(main@ch)
	goto	l1824
	line	74
	
l1830:	
	movlw	(032h)
	movwf	(main@ch)
	goto	l1824
	line	75
	
l1832:	
	movlw	(033h)
	movwf	(main@ch)
	goto	l1824
	line	76
	
l1834:	
	movlw	(034h)
	movwf	(main@ch)
	goto	l1824
	line	77
	
l1836:	
	movlw	(035h)
	movwf	(main@ch)
	goto	l1824
	line	78
	
l1838:	
	movlw	(036h)
	movwf	(main@ch)
	goto	l1824
	line	79
	
l1840:	
	movlw	(037h)
	movwf	(main@ch)
	goto	l1824
	line	80
	
l1842:	
	movlw	(038h)
	movwf	(main@ch)
	goto	l1824
	line	81
	
l1844:	
	movlw	(039h)
	movwf	(main@ch)
	goto	l1824
	line	82
	
l1846:	
	movlw	(041h)
	movwf	(main@ch)
	goto	l1824
	line	83
	
l1848:	
	movlw	(042h)
	movwf	(main@ch)
	goto	l1824
	line	84
	
l1850:	
	movlw	(043h)
	movwf	(main@ch)
	goto	l1824
	line	85
	
l1852:	
	movlw	(044h)
	movwf	(main@ch)
	goto	l1824
	line	86
	
l1854:	
	movlw	(045h)
	movwf	(main@ch)
	goto	l1824
	line	87
	
l1856:	
	movlw	(046h)
	movwf	(main@ch)
	goto	l1824
	line	88
	
l1858:	
	movlw	(030h)
	movwf	(main@ch)
	goto	l1824
	line	71
	
l1864:	
	movf	(main@ch),w
	; Switch size 1, requested type "space"
; Number of cases is 16, Range of values is 48 to 70
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           49    25 (average)
; direct_byte           80    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	48^0	; case 48
	skipnz
	goto	l1828
	xorlw	49^48	; case 49
	skipnz
	goto	l1830
	xorlw	50^49	; case 50
	skipnz
	goto	l1832
	xorlw	51^50	; case 51
	skipnz
	goto	l1834
	xorlw	52^51	; case 52
	skipnz
	goto	l1836
	xorlw	53^52	; case 53
	skipnz
	goto	l1838
	xorlw	54^53	; case 54
	skipnz
	goto	l1840
	xorlw	55^54	; case 55
	skipnz
	goto	l1842
	xorlw	56^55	; case 56
	skipnz
	goto	l1844
	xorlw	57^56	; case 57
	skipnz
	goto	l1846
	xorlw	65^57	; case 65
	skipnz
	goto	l1848
	xorlw	66^65	; case 66
	skipnz
	goto	l1850
	xorlw	67^66	; case 67
	skipnz
	goto	l1852
	xorlw	68^67	; case 68
	skipnz
	goto	l1854
	xorlw	69^68	; case 69
	skipnz
	goto	l1856
	xorlw	70^69	; case 70
	skipnz
	goto	l1858
	goto	l1858
	opt asmopt_on

	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	93
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_DisplayOn7Segment
psect	text36,local,class=CODE,delta=2
global __ptext36
__ptext36:

;; *************** function _DisplayOn7Segment *****************
;; Defined at:
;;		line 33 in file "C:\Users\Saeed\Desktop\PIC16F877A Free Running Counter\Code\Main.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text36
	file	"C:\Users\Saeed\Desktop\PIC16F877A Free Running Counter\Code\Main.c"
	line	33
	global	__size_of_DisplayOn7Segment
	__size_of_DisplayOn7Segment	equ	__end_of_DisplayOn7Segment-_DisplayOn7Segment
	
_DisplayOn7Segment:	
	opt	stack 7
; Regs used in _DisplayOn7Segment: [wreg-fsr0h+status,2+status,0]
;DisplayOn7Segment@ch stored from wreg
	movwf	(DisplayOn7Segment@ch)
	line	34
	
l1778:	
;Main.c: 34: switch(ch)
	goto	l1816
	line	36
	
l1780:	
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	37
	
l1782:	
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	38
	
l1784:	
	movlw	(05Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	39
	
l1786:	
	movlw	(04Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	40
	
l1788:	
	movlw	(066h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	41
	
l1790:	
	movlw	(06Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	42
	
l1792:	
	movlw	(07Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	43
	
l1794:	
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	44
	
l1796:	
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	45
	
l1798:	
	movlw	(06Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	46
	
l1800:	
	movlw	(077h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	47
	
l1802:	
	movlw	(07Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	48
	
l1804:	
	movlw	(039h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	49
	
l1806:	
	movlw	(05Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	50
	
l1808:	
	movlw	(079h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	51
	
l1810:	
	movlw	(071h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l706
	line	34
	
l1816:	
	movf	(DisplayOn7Segment@ch),w
	; Switch size 1, requested type "space"
; Number of cases is 16, Range of values is 48 to 70
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           49    25 (average)
; direct_byte           80    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	48^0	; case 48
	skipnz
	goto	l1780
	xorlw	49^48	; case 49
	skipnz
	goto	l1782
	xorlw	50^49	; case 50
	skipnz
	goto	l1784
	xorlw	51^50	; case 51
	skipnz
	goto	l1786
	xorlw	52^51	; case 52
	skipnz
	goto	l1788
	xorlw	53^52	; case 53
	skipnz
	goto	l1790
	xorlw	54^53	; case 54
	skipnz
	goto	l1792
	xorlw	55^54	; case 55
	skipnz
	goto	l1794
	xorlw	56^55	; case 56
	skipnz
	goto	l1796
	xorlw	57^56	; case 57
	skipnz
	goto	l1798
	xorlw	65^57	; case 65
	skipnz
	goto	l1800
	xorlw	66^65	; case 66
	skipnz
	goto	l1802
	xorlw	67^66	; case 67
	skipnz
	goto	l1804
	xorlw	68^67	; case 68
	skipnz
	goto	l1806
	xorlw	69^68	; case 69
	skipnz
	goto	l1808
	xorlw	70^69	; case 70
	skipnz
	goto	l1810
	goto	l1780
	opt asmopt_on

	line	55
	
l706:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayOn7Segment
	__end_of_DisplayOn7Segment:
;; =============== function _DisplayOn7Segment ends ============

	signat	_DisplayOn7Segment,4216
psect	text37,local,class=CODE,delta=2
global __ptext37
__ptext37:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
