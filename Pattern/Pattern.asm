;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW32)
;--------------------------------------------------------
	.module Pattern
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _button
	.globl _delay
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _patternPtr
	.globl _RamPattern
	.globl _Pattern6
	.globl _Pattern5
	.globl _Pattern4
	.globl _Pattern3
	.globl _Pattern2
	.globl _Pattern1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0_0$0 == 0x0080
_P0	=	0x0080
G$SP$0_0$0 == 0x0081
_SP	=	0x0081
G$DPL$0_0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0_0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0_0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0_0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0_0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0_0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0_0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0_0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0_0$0 == 0x008d
_TH1	=	0x008d
G$P1$0_0$0 == 0x0090
_P1	=	0x0090
G$SCON$0_0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0_0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0_0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0_0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0_0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0_0$0 == 0x00b8
_IP	=	0x00b8
G$PSW$0_0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0_0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0_0$0 == 0x00f0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0_0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0_0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0_0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0_0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0_0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0_0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0_0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0_0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0_0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0_0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0_0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0_0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0_0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0_0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0_0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0_0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0_0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0_0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0_0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0_0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0_0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0_0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0_0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0_0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0_0$0 == 0x0098
_RI	=	0x0098
G$TI$0_0$0 == 0x0099
_TI	=	0x0099
G$RB8$0_0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0_0$0 == 0x009b
_TB8	=	0x009b
G$REN$0_0$0 == 0x009c
_REN	=	0x009c
G$SM2$0_0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0_0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0_0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0_0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0_0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0_0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0_0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0_0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0_0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0_0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0_0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0_0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0_0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0_0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0_0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0_0$0 == 0x00ac
_ES	=	0x00ac
G$EA$0_0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0_0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0_0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0_0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0_0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0_0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0_0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0_0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0_0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0_0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0_0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0_0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0_0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0_0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0_0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0_0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0_0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0_0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0_0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0_0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0_0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0_0$0 == 0x00bc
_PS	=	0x00bc
G$P$0_0$0 == 0x00d0
_P	=	0x00d0
G$F1$0_0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0_0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0_0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0_0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0_0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0_0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0_0$0 == 0x00d7
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$Pattern1$0_0$0==.
_Pattern1::
	.ds 8
G$Pattern2$0_0$0==.
_Pattern2::
	.ds 8
G$Pattern3$0_0$0==.
_Pattern3::
	.ds 8
G$Pattern4$0_0$0==.
_Pattern4::
	.ds 8
G$Pattern5$0_0$0==.
_Pattern5::
	.ds 8
G$Pattern6$0_0$0==.
_Pattern6::
	.ds 8
G$RamPattern$0_0$0==.
_RamPattern::
	.ds 8
G$patternPtr$0_0$0==.
_patternPtr::
	.ds 3
FPattern$mode$0_0$0 == 0x0050
_mode	=	0x0050
FPattern$modePtr$0_0$0 == 0x0051
_modePtr	=	0x0051
FPattern$x$0_0$0 == 0x0052
_x	=	0x0052
FPattern$RamPatternPtr$0_0$0 == 0x0053
_RamPatternPtr	=	0x0053
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	C$Pattern.c$3$1_0$6 ==.
;	Pattern.c:3: char Pattern1[] = {0x80,0x40,0x20,0x10,0x08,0x04,0x02,0x01};
	mov	_Pattern1,#0x80
	mov	(_Pattern1 + 0x0001),#0x40
	mov	(_Pattern1 + 0x0002),#0x20
	mov	(_Pattern1 + 0x0003),#0x10
	mov	(_Pattern1 + 0x0004),#0x08
	mov	(_Pattern1 + 0x0005),#0x04
	mov	(_Pattern1 + 0x0006),#0x02
	mov	(_Pattern1 + 0x0007),#0x01
	C$Pattern.c$4$1_0$6 ==.
;	Pattern.c:4: char Pattern2[] = {0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};
	mov	_Pattern2,#0x01
	mov	(_Pattern2 + 0x0001),#0x02
	mov	(_Pattern2 + 0x0002),#0x04
	mov	(_Pattern2 + 0x0003),#0x08
	mov	(_Pattern2 + 0x0004),#0x10
	mov	(_Pattern2 + 0x0005),#0x20
	mov	(_Pattern2 + 0x0006),#0x40
	mov	(_Pattern2 + 0x0007),#0x80
	C$Pattern.c$5$1_0$6 ==.
;	Pattern.c:5: char Pattern3[] = {0x81,0x42,0x24,0x18,0x18,0x24,0x42,0x81};
	mov	_Pattern3,#0x81
	mov	(_Pattern3 + 0x0001),#0x42
	mov	(_Pattern3 + 0x0002),#0x24
	mov	(_Pattern3 + 0x0003),#0x18
	mov	(_Pattern3 + 0x0004),#0x18
	mov	(_Pattern3 + 0x0005),#0x24
	mov	(_Pattern3 + 0x0006),#0x42
	mov	(_Pattern3 + 0x0007),#0x81
	C$Pattern.c$6$1_0$6 ==.
;	Pattern.c:6: char Pattern4[] = {0x18,0x24,0x42,0x81,0x81,0x42,0x24,0x18};
	mov	_Pattern4,#0x18
	mov	(_Pattern4 + 0x0001),#0x24
	mov	(_Pattern4 + 0x0002),#0x42
	mov	(_Pattern4 + 0x0003),#0x81
	mov	(_Pattern4 + 0x0004),#0x81
	mov	(_Pattern4 + 0x0005),#0x42
	mov	(_Pattern4 + 0x0006),#0x24
	mov	(_Pattern4 + 0x0007),#0x18
	C$Pattern.c$7$1_0$6 ==.
;	Pattern.c:7: char Pattern5[] = {0xA0,0x50,0x28,0x14,0x0A,0x05,0x02,0x01};
	mov	_Pattern5,#0xa0
	mov	(_Pattern5 + 0x0001),#0x50
	mov	(_Pattern5 + 0x0002),#0x28
	mov	(_Pattern5 + 0x0003),#0x14
	mov	(_Pattern5 + 0x0004),#0x0a
	mov	(_Pattern5 + 0x0005),#0x05
	mov	(_Pattern5 + 0x0006),#0x02
	mov	(_Pattern5 + 0x0007),#0x01
	C$Pattern.c$8$1_0$6 ==.
;	Pattern.c:8: char Pattern6[] = {0x01,0x02,0x05,0x0A,0x14,0x28,0x50,0xA0};
	mov	_Pattern6,#0x01
	mov	(_Pattern6 + 0x0001),#0x02
	mov	(_Pattern6 + 0x0002),#0x05
	mov	(_Pattern6 + 0x0003),#0x0a
	mov	(_Pattern6 + 0x0004),#0x14
	mov	(_Pattern6 + 0x0005),#0x28
	mov	(_Pattern6 + 0x0006),#0x50
	mov	(_Pattern6 + 0x0007),#0xa0
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;ms                        Allocated to registers r6 r7 
;------------------------------------------------------------
	G$delay$0$0 ==.
	C$Pattern.c$19$0_0$2 ==.
;	Pattern.c:19: void delay(int ms )            /* How to get 125mS.. */
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
	C$Pattern.c$22$1_0$2 ==.
;	Pattern.c:22: while(ms--);            /* So 1000 / 11.89uS = 91 for 1 msec */
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00110$
	dec	r7
00110$:
	mov	a,r4
	orl	a,r5
	jnz	00101$
	C$Pattern.c$23$1_0$2 ==.
;	Pattern.c:23: }          
	C$Pattern.c$23$1_0$2 ==.
	XG$delay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'button'
;------------------------------------------------------------
	G$button$0$0 ==.
	C$Pattern.c$24$1_0$4 ==.
;	Pattern.c:24: char button(void)
;	-----------------------------------------
;	 function button
;	-----------------------------------------
_button:
	C$Pattern.c$26$1_0$4 ==.
;	Pattern.c:26: if(P0_0) return 0;
	jnb	_P0_0,00102$
	mov	dpl,#0x00
	ljmp	00117$
00102$:
	C$Pattern.c$28$1_0$4 ==.
;	Pattern.c:28: if(++mode == 8) mode = 0;
	mov	a,_mode
	inc	a
	mov	r7,a
	mov	_mode,r7
	cjne	r7,#0x08,00104$
	mov	_mode,#0x00
00104$:
	C$Pattern.c$29$1_0$4 ==.
;	Pattern.c:29: if(mode == 0) patternPtr = &Pattern1[0];
	mov	a,_mode
	jnz	00106$
	mov	_patternPtr,#_Pattern1
	mov	(_patternPtr + 1),a
	mov	(_patternPtr + 2),#0x40
00106$:
	C$Pattern.c$30$1_0$4 ==.
;	Pattern.c:30: if(mode == 1) patternPtr = &Pattern2[0];
	mov	a,#0x01
	cjne	a,_mode,00108$
	mov	_patternPtr,#_Pattern2
	mov	(_patternPtr + 1),#0x00
	mov	(_patternPtr + 2),#0x40
00108$:
	C$Pattern.c$31$1_0$4 ==.
;	Pattern.c:31: if(mode == 2) patternPtr = &Pattern3[0];
	mov	a,#0x02
	cjne	a,_mode,00110$
	mov	_patternPtr,#_Pattern3
	mov	(_patternPtr + 1),#0x00
	mov	(_patternPtr + 2),#0x40
00110$:
	C$Pattern.c$32$1_0$4 ==.
;	Pattern.c:32: if(mode == 3) patternPtr = &Pattern4[0];
	mov	a,#0x03
	cjne	a,_mode,00112$
	mov	_patternPtr,#_Pattern4
	mov	(_patternPtr + 1),#0x00
	mov	(_patternPtr + 2),#0x40
00112$:
	C$Pattern.c$33$1_0$4 ==.
;	Pattern.c:33: if(mode == 4) patternPtr = &Pattern5[0];
	mov	a,#0x04
	cjne	a,_mode,00114$
	mov	_patternPtr,#_Pattern5
	mov	(_patternPtr + 1),#0x00
	mov	(_patternPtr + 2),#0x40
00114$:
	C$Pattern.c$34$1_0$4 ==.
;	Pattern.c:34: if(mode == 5) patternPtr = &Pattern6[0];
	mov	a,#0x05
	cjne	a,_mode,00116$
	mov	_patternPtr,#_Pattern6
	mov	(_patternPtr + 1),#0x00
	mov	(_patternPtr + 2),#0x40
00116$:
	C$Pattern.c$35$1_0$4 ==.
;	Pattern.c:35: P2 = mode;
	mov	_P2,_mode
	C$Pattern.c$36$1_0$4 ==.
;	Pattern.c:36: return 1;
	mov	dpl,#0x01
00117$:
	C$Pattern.c$37$1_0$4 ==.
;	Pattern.c:37: }
	C$Pattern.c$37$1_0$4 ==.
	XG$button$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$Pattern.c$38$1_0$6 ==.
;	Pattern.c:38: void main(void)         /* Main entry point */
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$Pattern.c$40$1_0$6 ==.
;	Pattern.c:40: SP = 0x60;
	mov	_SP,#0x60
	C$Pattern.c$41$1_0$6 ==.
;	Pattern.c:41: mode = 1;
	mov	_mode,#0x01
	C$Pattern.c$42$1_0$6 ==.
;	Pattern.c:42: modePtr = &mode;	/* modePtr now have the address of mode not the data value */
	mov	_modePtr,#_mode
	C$Pattern.c$43$1_0$6 ==.
;	Pattern.c:43: patternPtr = &Pattern1[0];	/* patternPtr now have also the secound array Address */ 
	mov	_patternPtr,#_Pattern1
	mov	(_patternPtr + 1),#0x00
	mov	(_patternPtr + 2),#0x40
	C$Pattern.c$44$1_0$6 ==.
;	Pattern.c:44: RamPatternPtr = &RamPattern[0];
	mov	_RamPatternPtr,#_RamPattern
	C$Pattern.c$45$1_0$6 ==.
;	Pattern.c:45: while(1)           /* Forever loop */
00105$:
	C$Pattern.c$47$3_0$8 ==.
;	Pattern.c:47: for(x=0;x<8;x++)
	mov	_x,#0x00
00108$:
	mov	a,#0x100 - 0x08
	add	a,_x
	jc	00105$
	C$Pattern.c$49$4_0$9 ==.
;	Pattern.c:49: P1 = patternPtr[x];     
	mov	a,_x
	add	a,_patternPtr
	mov	r5,a
	clr	a
	addc	a,(_patternPtr + 1)
	mov	r6,a
	mov	r7,(_patternPtr + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_P1,a
	C$Pattern.c$50$4_0$9 ==.
;	Pattern.c:50: delay(1);        		/* To see LED's */
	mov	dptr,#0x0001
	lcall	_delay
	C$Pattern.c$51$4_0$9 ==.
;	Pattern.c:51: if(button()) x = 0;         /* Check button */
	lcall	_button
	mov	a,dpl
	jz	00109$
	mov	_x,#0x00
00109$:
	C$Pattern.c$47$3_0$8 ==.
;	Pattern.c:47: for(x=0;x<8;x++)
	mov	a,_x
	inc	a
	mov	_x,a
	sjmp	00108$
	C$Pattern.c$54$1_0$6 ==.
;	Pattern.c:54: }
	C$Pattern.c$54$1_0$6 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
