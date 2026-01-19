subtitle "Microchip MPLAB XC8 C Compiler v3.00 (Free license) build 20241204225717 Og1 "

pagewidth 120

	opt flic

	processor	18F46K22
include "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\18f46k22.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
skiprom24 macro arg1
	btfsc arg1,7
endm
	global	__ramtop
	global	__accesstop
# 54 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
ANSELA equ 0F38h ;# 
# 99 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
ANSELB equ 0F39h ;# 
# 149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
ANSELC equ 0F3Ah ;# 
# 200 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
ANSELD equ 0F3Bh ;# 
# 262 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
ANSELE equ 0F3Ch ;# 
# 294 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PMD2 equ 0F3Dh ;# 
# 332 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PMD1 equ 0F3Eh ;# 
# 397 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PMD0 equ 0F3Fh ;# 
# 474 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
VREFCON2 equ 0F40h ;# 
# 479 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
DACCON1 equ 0F40h ;# 
# 576 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
VREFCON1 equ 0F41h ;# 
# 581 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
DACCON0 equ 0F41h ;# 
# 696 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
VREFCON0 equ 0F42h ;# 
# 701 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
FVRCON equ 0F42h ;# 
# 790 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CTMUICON equ 0F43h ;# 
# 795 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CTMUICONH equ 0F43h ;# 
# 940 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CTMUCONL equ 0F44h ;# 
# 945 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CTMUCON1 equ 0F44h ;# 
# 1094 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CTMUCONH equ 0F45h ;# 
# 1099 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CTMUCON0 equ 0F45h ;# 
# 1206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SRCON1 equ 0F46h ;# 
# 1268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SRCON0 equ 0F47h ;# 
# 1339 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1465 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
T6CON equ 0F4Ah ;# 
# 1536 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PR6 equ 0F4Bh ;# 
# 1556 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TMR6 equ 0F4Ch ;# 
# 1576 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
T5GCON equ 0F4Dh ;# 
# 1671 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
T5CON equ 0F4Eh ;# 
# 1780 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TMR5 equ 0F4Fh ;# 
# 1787 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TMR5L equ 0F4Fh ;# 
# 1807 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TMR5H equ 0F50h ;# 
# 1827 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
T4CON equ 0F51h ;# 
# 1898 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PR4 equ 0F52h ;# 
# 1918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TMR4 equ 0F53h ;# 
# 1938 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCP5CON equ 0F54h ;# 
# 2002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPR5 equ 0F55h ;# 
# 2009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPR5L equ 0F55h ;# 
# 2029 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPR5H equ 0F56h ;# 
# 2049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCP4CON equ 0F57h ;# 
# 2113 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPR4 equ 0F58h ;# 
# 2120 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPR4L equ 0F58h ;# 
# 2140 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPR4H equ 0F59h ;# 
# 2160 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2241 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCP3AS equ 0F5Bh ;# 
# 2478 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PWM3CON equ 0F5Ch ;# 
# 2548 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCP3CON equ 0F5Dh ;# 
# 2630 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPR3 equ 0F5Eh ;# 
# 2637 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPR3L equ 0F5Eh ;# 
# 2657 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPR3H equ 0F5Fh ;# 
# 2677 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SLRCON equ 0F60h ;# 
# 2721 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
WPUB equ 0F61h ;# 
# 2783 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
IOCB equ 0F62h ;# 
# 2822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PSTR2CON equ 0F63h ;# 
# 2962 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
ECCP2AS equ 0F64h ;# 
# 2967 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCP2AS equ 0F64h ;# 
# 3204 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PWM2CON equ 0F65h ;# 
# 3274 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCP2CON equ 0F66h ;# 
# 3356 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPR2 equ 0F67h ;# 
# 3363 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPR2L equ 0F67h ;# 
# 3383 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPR2H equ 0F68h ;# 
# 3403 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSP2CON3 equ 0F69h ;# 
# 3465 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3535 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3680 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3800 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4200 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
BAUDCON2 equ 0F70h ;# 
# 4295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
BAUD2CON equ 0F70h ;# 
# 4552 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
RCSTA2 equ 0F71h ;# 
# 4557 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
RC2STA equ 0F71h ;# 
# 4840 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TXSTA2 equ 0F72h ;# 
# 4845 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TX2STA equ 0F72h ;# 
# 5092 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TXREG2 equ 0F73h ;# 
# 5097 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TX2REG equ 0F73h ;# 
# 5130 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
RCREG2 equ 0F74h ;# 
# 5135 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
RC2REG equ 0F74h ;# 
# 5168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SPBRG2 equ 0F75h ;# 
# 5173 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SP2BRG equ 0F75h ;# 
# 5206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SPBRGH2 equ 0F76h ;# 
# 5211 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SP2BRGH equ 0F76h ;# 
# 5244 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CM2CON1 equ 0F77h ;# 
# 5249 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CM12CON equ 0F77h ;# 
# 5366 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CM2CON0 equ 0F78h ;# 
# 5371 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CM2CON equ 0F78h ;# 
# 5646 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CM1CON0 equ 0F79h ;# 
# 5651 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CM1CON equ 0F79h ;# 
# 6068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PIE4 equ 0F7Ah ;# 
# 6100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PIR4 equ 0F7Bh ;# 
# 6132 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
IPR4 equ 0F7Ch ;# 
# 6172 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PIE5 equ 0F7Dh ;# 
# 6204 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PIR5 equ 0F7Eh ;# 
# 6236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
IPR5 equ 0F7Fh ;# 
# 6282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PORTA equ 0F80h ;# 
# 6567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PORTB equ 0F81h ;# 
# 6837 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PORTC equ 0F82h ;# 
# 7144 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PORTD equ 0F83h ;# 
# 7387 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PORTE equ 0F84h ;# 
# 7562 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
LATA equ 0F89h ;# 
# 7674 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
LATB equ 0F8Ah ;# 
# 7786 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
LATC equ 0F8Bh ;# 
# 7898 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
LATD equ 0F8Ch ;# 
# 8010 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
LATE equ 0F8Dh ;# 
# 8062 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TRISA equ 0F92h ;# 
# 8067 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
DDRA equ 0F92h ;# 
# 8284 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TRISB equ 0F93h ;# 
# 8289 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
DDRB equ 0F93h ;# 
# 8506 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TRISC equ 0F94h ;# 
# 8511 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
DDRC equ 0F94h ;# 
# 8728 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TRISD equ 0F95h ;# 
# 8733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
DDRD equ 0F95h ;# 
# 8950 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TRISE equ 0F96h ;# 
# 8955 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
DDRE equ 0F96h ;# 
# 9066 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
OSCTUNE equ 0F9Bh ;# 
# 9136 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
HLVDCON equ 0F9Ch ;# 
# 9141 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
LVDCON equ 0F9Ch ;# 
# 9416 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PIE1 equ 0F9Dh ;# 
# 9493 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PIR1 equ 0F9Eh ;# 
# 9570 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
IPR1 equ 0F9Fh ;# 
# 9647 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PIE2 equ 0FA0h ;# 
# 9733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PIR2 equ 0FA1h ;# 
# 9819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
IPR2 equ 0FA2h ;# 
# 9905 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PIE3 equ 0FA3h ;# 
# 10015 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PIR3 equ 0FA4h ;# 
# 10093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
IPR3 equ 0FA5h ;# 
# 10171 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
EECON1 equ 0FA6h ;# 
# 10237 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
EECON2 equ 0FA7h ;# 
# 10257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
EEDATA equ 0FA8h ;# 
# 10277 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
EEADR equ 0FA9h ;# 
# 10347 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
EEADRH equ 0FAAh ;# 
# 10381 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
RCSTA1 equ 0FABh ;# 
# 10386 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
RCSTA equ 0FABh ;# 
# 10390 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
RC1STA equ 0FABh ;# 
# 10837 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TXSTA1 equ 0FACh ;# 
# 10842 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TXSTA equ 0FACh ;# 
# 10846 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TX1STA equ 0FACh ;# 
# 11212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TXREG1 equ 0FADh ;# 
# 11217 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TXREG equ 0FADh ;# 
# 11221 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TX1REG equ 0FADh ;# 
# 11290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
RCREG1 equ 0FAEh ;# 
# 11295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
RCREG equ 0FAEh ;# 
# 11299 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
RC1REG equ 0FAEh ;# 
# 11368 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SPBRG1 equ 0FAFh ;# 
# 11373 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SPBRG equ 0FAFh ;# 
# 11377 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SP1BRG equ 0FAFh ;# 
# 11446 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SPBRGH1 equ 0FB0h ;# 
# 11451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SPBRGH equ 0FB0h ;# 
# 11455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SP1BRGH equ 0FB0h ;# 
# 11524 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
T3CON equ 0FB1h ;# 
# 11632 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TMR3 equ 0FB2h ;# 
# 11639 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TMR3L equ 0FB2h ;# 
# 11659 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TMR3H equ 0FB3h ;# 
# 11679 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
T3GCON equ 0FB4h ;# 
# 11774 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
ECCP1AS equ 0FB6h ;# 
# 11779 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
ECCPAS equ 0FB6h ;# 
# 12156 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PWM1CON equ 0FB7h ;# 
# 12161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PWMCON equ 0FB7h ;# 
# 12410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
BAUDCON1 equ 0FB8h ;# 
# 12415 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
BAUDCON equ 0FB8h ;# 
# 12419 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
BAUDCTL equ 0FB8h ;# 
# 12423 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
BAUD1CON equ 0FB8h ;# 
# 13084 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PSTR1CON equ 0FB9h ;# 
# 13089 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PSTRCON equ 0FB9h ;# 
# 13234 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
T2CON equ 0FBAh ;# 
# 13305 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PR2 equ 0FBBh ;# 
# 13325 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TMR2 equ 0FBCh ;# 
# 13345 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCP1CON equ 0FBDh ;# 
# 13427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPR1 equ 0FBEh ;# 
# 13434 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPR1L equ 0FBEh ;# 
# 13454 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
CCPR1H equ 0FBFh ;# 
# 13474 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
ADCON2 equ 0FC0h ;# 
# 13545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
ADCON1 equ 0FC1h ;# 
# 13613 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
ADCON0 equ 0FC2h ;# 
# 13738 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
ADRES equ 0FC3h ;# 
# 13745 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
ADRESL equ 0FC3h ;# 
# 13765 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
ADRESH equ 0FC4h ;# 
# 13785 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSP1CON2 equ 0FC5h ;# 
# 13790 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSPCON2 equ 0FC5h ;# 
# 14139 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSP1CON1 equ 0FC6h ;# 
# 14144 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSPCON1 equ 0FC6h ;# 
# 14377 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSP1STAT equ 0FC7h ;# 
# 14382 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSPSTAT equ 0FC7h ;# 
# 15007 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSP1ADD equ 0FC8h ;# 
# 15012 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSPADD equ 0FC8h ;# 
# 15261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSP1BUF equ 0FC9h ;# 
# 15266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSPBUF equ 0FC9h ;# 
# 15315 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSP1MSK equ 0FCAh ;# 
# 15320 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSPMSK equ 0FCAh ;# 
# 15453 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSP1CON3 equ 0FCBh ;# 
# 15458 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
SSPCON3 equ 0FCBh ;# 
# 15575 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
T1GCON equ 0FCCh ;# 
# 15670 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
T1CON equ 0FCDh ;# 
# 15783 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TMR1 equ 0FCEh ;# 
# 15790 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TMR1L equ 0FCEh ;# 
# 15810 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TMR1H equ 0FCFh ;# 
# 15830 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
RCON equ 0FD0h ;# 
# 15963 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
WDTCON equ 0FD1h ;# 
# 15991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
OSCCON2 equ 0FD2h ;# 
# 16048 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
OSCCON equ 0FD3h ;# 
# 16131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
T0CON equ 0FD5h ;# 
# 16201 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TMR0 equ 0FD6h ;# 
# 16208 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TMR0L equ 0FD6h ;# 
# 16228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TMR0H equ 0FD7h ;# 
# 16248 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
STATUS equ 0FD8h ;# 
# 16319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
FSR2 equ 0FD9h ;# 
# 16326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
FSR2L equ 0FD9h ;# 
# 16346 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
FSR2H equ 0FDAh ;# 
# 16353 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PLUSW2 equ 0FDBh ;# 
# 16373 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PREINC2 equ 0FDCh ;# 
# 16393 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
POSTDEC2 equ 0FDDh ;# 
# 16413 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
POSTINC2 equ 0FDEh ;# 
# 16433 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
INDF2 equ 0FDFh ;# 
# 16453 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
BSR equ 0FE0h ;# 
# 16460 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
FSR1 equ 0FE1h ;# 
# 16467 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
FSR1L equ 0FE1h ;# 
# 16487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
FSR1H equ 0FE2h ;# 
# 16494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PLUSW1 equ 0FE3h ;# 
# 16514 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PREINC1 equ 0FE4h ;# 
# 16534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
POSTDEC1 equ 0FE5h ;# 
# 16554 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
POSTINC1 equ 0FE6h ;# 
# 16574 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
INDF1 equ 0FE7h ;# 
# 16594 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
WREG equ 0FE8h ;# 
# 16632 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
FSR0 equ 0FE9h ;# 
# 16639 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
FSR0L equ 0FE9h ;# 
# 16659 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
FSR0H equ 0FEAh ;# 
# 16666 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PLUSW0 equ 0FEBh ;# 
# 16686 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PREINC0 equ 0FECh ;# 
# 16706 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
POSTDEC0 equ 0FEDh ;# 
# 16726 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
POSTINC0 equ 0FEEh ;# 
# 16746 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
INDF0 equ 0FEFh ;# 
# 16766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
INTCON3 equ 0FF0h ;# 
# 16858 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
INTCON2 equ 0FF1h ;# 
# 16928 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
INTCON equ 0FF2h ;# 
# 17045 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PROD equ 0FF3h ;# 
# 17052 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PRODL equ 0FF3h ;# 
# 17072 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PRODH equ 0FF4h ;# 
# 17092 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TABLAT equ 0FF5h ;# 
# 17114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TBLPTR equ 0FF6h ;# 
# 17121 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TBLPTRL equ 0FF6h ;# 
# 17141 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TBLPTRH equ 0FF7h ;# 
# 17161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TBLPTRU equ 0FF8h ;# 
# 17192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PCLAT equ 0FF9h ;# 
# 17199 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PC equ 0FF9h ;# 
# 17206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PCL equ 0FF9h ;# 
# 17226 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PCLATH equ 0FFAh ;# 
# 17246 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
PCLATU equ 0FFBh ;# 
# 17253 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
STKPTR equ 0FFCh ;# 
# 17359 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TOS equ 0FFDh ;# 
# 17366 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TOSL equ 0FFDh ;# 
# 17386 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TOSH equ 0FFEh ;# 
# 17406 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f46k22.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNROOT	_main
	global	_LATAbits
_LATAbits	set	0xF89
	global	_TRISAbits
_TRISAbits	set	0xF92
	global	_OSCTUNE
_OSCTUNE	set	0xF9B
	global	_OSCCON
_OSCCON	set	0xFD3
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "INTIO67"
	config PLLCFG = "ON"
	config PRICLKEN = "ON"
	config FCMEN = "OFF"
	config IESO = "OFF"
	config PWRTEN = "ON"
	config BOREN = "SBORDIS"
	config BORV = "250"
	config WDTEN = "OFF"
	config WDTPS = "32768"
	config CCP2MX = "PORTC1"
	config PBADEN = "ON"
	config CCP3MX = "PORTB5"
	config HFOFST = "ON"
	config T3CMX = "PORTC0"
	config P2BMX = "PORTD2"
	config MCLRE = "EXTMCLR"
	config STVREN = "ON"
	config LVP = "ON"
	config XINST = "OFF"
	config CP0 = "OFF"
	config CP1 = "OFF"
	config CP2 = "OFF"
	config CP3 = "OFF"
	config CPB = "OFF"
	config CPD = "OFF"
	config WRT0 = "OFF"
	config WRT1 = "OFF"
	config WRT2 = "OFF"
	config WRT3 = "OFF"
	config WRTC = "OFF"
	config WRTB = "OFF"
	config WRTD = "OFF"
	config EBTR0 = "OFF"
	config EBTR1 = "OFF"
	config EBTR2 = "OFF"
	config EBTR3 = "OFF"
	config EBTRB = "OFF"
	file	"dist/default/production\Lab1.X.production.s"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_main:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
	ds   2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95      2       2
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14          256      0       0
;!    BANK15           56      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _main in BANK15
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0       0
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMRAM           95      0       0      0.0%
;!BITBANK0           160      0       0      0.0%
;!BITBANK1           256      0       0      0.0%
;!BITBANK2           256      0       0      0.0%
;!BITBANK3           256      0       0      0.0%
;!BITBANK4           256      0       0      0.0%
;!BITBANK5           256      0       0      0.0%
;!BITBANK6           256      0       0      0.0%
;!BITBANK7           256      0       0      0.0%
;!BITBANK8           256      0       0      0.0%
;!BITBANK9           256      0       0      0.0%
;!BITBANK10          256      0       0      0.0%
;!BITBANK11          256      0       0      0.0%
;!BITBANK12          256      0       0      0.0%
;!BITBANK13          256      0       0      0.0%
;!BITBANK14          256      0       0      0.0%
;!BITBANK15           56      0       0      0.0%
;!BITBIGSFRh         118      0       0      0.0%
;!BITBIGSFRl          81      0       0      0.0%
;!COMRAM              95      2       2      2.1%
;!BANK0              160      0       0      0.0%
;!BANK1              256      0       0      0.0%
;!BANK2              256      0       0      0.0%
;!BANK3              256      0       0      0.0%
;!BANK4              256      0       0      0.0%
;!BANK5              256      0       0      0.0%
;!BANK6              256      0       0      0.0%
;!BANK7              256      0       0      0.0%
;!BANK8              256      0       0      0.0%
;!BANK9              256      0       0      0.0%
;!BANK10             256      0       0      0.0%
;!BANK11             256      0       0      0.0%
;!BANK12             256      0       0      0.0%
;!BANK13             256      0       0      0.0%
;!BANK14             256      0       0      0.0%
;!BANK15              56      0       0      0.0%
;!BIGRAM            3895      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0       2      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 8 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	8
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	8
	
_main:
;incstack = 0
	callstack 31
	line	10
	
l694:
	movlw	low(070h)
	movwf	((c:4051))^0f00h,c	;volatile
	line	11
	movlw	low(040h)
	movwf	((c:3995))^0f00h,c	;volatile
	line	13
	
l696:
	bcf	((c:3986))^0f00h,c,4	;volatile
	line	16
	
l698:
	bsf	((c:3977))^0f00h,c,4	;volatile
	line	17
	
l700:
	asmopt push
asmopt off
movlw  82
movwf	(??_main+0+0+1)^00h,c
movlw	43
movwf	(??_main+0+0)^00h,c
	movlw	0
u17:
decfsz	wreg,f
	bra	u17
	decfsz	(??_main+0+0)^00h,c,f
	bra	u17
	decfsz	(??_main+0+0+1)^00h,c,f
	bra	u17
	nop2
asmopt pop

	line	19
	
l702:
	bcf	((c:3977))^0f00h,c,4	;volatile
	line	20
	
l704:
	asmopt push
asmopt off
movlw  82
movwf	(??_main+0+0+1)^00h,c
movlw	43
movwf	(??_main+0+0)^00h,c
	movlw	0
u27:
decfsz	wreg,f
	bra	u27
	decfsz	(??_main+0+0)^00h,c,f
	bra	u27
	decfsz	(??_main+0+0+1)^00h,c,f
	bra	u27
	nop2
asmopt pop

	goto	l698
	global	start
	goto	start
	callstack 0
	line	22
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	db 0	; dummy byte at the end
	global	__smallconst
__smallconst	set	__psmallconst
	global	__mediumconst
__mediumconst	set	__psmallconst
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
