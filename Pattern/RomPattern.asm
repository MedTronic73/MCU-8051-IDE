;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW32)
;--------------------------------------------------------
	.module RomPattern
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Pattern6
	.globl _Pattern5
	.globl _Pattern4
	.globl _Pattern3
	.globl _Pattern2
	.globl _Pattern1
	.globl _main
	.globl _button
	.globl _Download_Array
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
	.globl _patternData
	.globl _RamPattern
	.globl _patternAddress
	.globl _Address6
	.globl _Address5
	.globl _Address4
	.globl _Address3
	.globl _Address2
	.globl _Address1
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
G$Address1$0_0$0==.
_Address1::
	.ds 3
G$Address2$0_0$0==.
_Address2::
	.ds 3
G$Address3$0_0$0==.
_Address3::
	.ds 3
G$Address4$0_0$0==.
_Address4::
	.ds 3
G$Address5$0_0$0==.
_Address5::
	.ds 3
G$Address6$0_0$0==.
_Address6::
	.ds 3
G$patternAddress$0_0$0==.
_patternAddress::
	.ds 3
G$RamPattern$0_0$0==.
_RamPattern::
	.ds 8
G$patternData$0_0$0 == 0x0040
_patternData	=	0x0040
FRomPattern$mode$0_0$0 == 0x0042
_mode	=	0x0042
FRomPattern$modePtr$0_0$0 == 0x0043
_modePtr	=	0x0043
FRomPattern$x$0_0$0 == 0x0044
_x	=	0x0044
FRomPattern$RamPatternPtr$0_0$0 == 0x0045
_RamPatternPtr	=	0x0045
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
	C$RomPattern.c$10$1_0$10 ==.
;	RomPattern.c:10: const char *Address1 = &Pattern1[0]; /* Pointe to every pattern by a Pointer for it */	
	mov	_Address1,#_Pattern1
	mov	(_Address1 + 1),#(_Pattern1 >> 8)
	mov	(_Address1 + 2),#0x80
	C$RomPattern.c$11$1_0$10 ==.
;	RomPattern.c:11: const char *Address2 = &Pattern2[0]; /* Every Pointer will be at ram and pointe to Rom */
	mov	_Address2,#_Pattern2
	mov	(_Address2 + 1),#(_Pattern2 >> 8)
	mov	(_Address2 + 2),#0x80
	C$RomPattern.c$12$1_0$10 ==.
;	RomPattern.c:12: const char *Address3 = &Pattern3[0];	
	mov	_Address3,#_Pattern3
	mov	(_Address3 + 1),#(_Pattern3 >> 8)
	mov	(_Address3 + 2),#0x80
	C$RomPattern.c$13$1_0$10 ==.
;	RomPattern.c:13: const char *Address4 = &Pattern4[0];	
	mov	_Address4,#_Pattern4
	mov	(_Address4 + 1),#(_Pattern4 >> 8)
	mov	(_Address4 + 2),#0x80
	C$RomPattern.c$14$1_0$10 ==.
;	RomPattern.c:14: const char *Address5 = &Pattern5[0];	
	mov	_Address5,#_Pattern5
	mov	(_Address5 + 1),#(_Pattern5 >> 8)
	mov	(_Address5 + 2),#0x80
	C$RomPattern.c$15$1_0$10 ==.
;	RomPattern.c:15: const char *Address6 = &Pattern6[0];	
	mov	_Address6,#_Pattern6
	mov	(_Address6 + 1),#(_Pattern6 >> 8)
	mov	(_Address6 + 2),#0x80
	C$RomPattern.c$17$1_0$10 ==.
;	RomPattern.c:17: const char *patternAddress = &Pattern1[0]; /* General Pointer for the start Array */	
	mov	_patternAddress,#_Pattern1
	mov	(_patternAddress + 1),#(_Pattern1 >> 8)
	mov	(_patternAddress + 2),#0x80
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
	C$RomPattern.c$29$0_0$2 ==.
;	RomPattern.c:29: void delay(int ms )            /* How to get 125mS.. */
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
	C$RomPattern.c$32$1_0$2 ==.
;	RomPattern.c:32: while(ms--);             /* So 1000 / 11.89uS = 91 for 1 msec */
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
	C$RomPattern.c$33$1_0$2 ==.
;	RomPattern.c:33: }          
	C$RomPattern.c$33$1_0$2 ==.
	XG$delay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Download_Array'
;------------------------------------------------------------
	G$Download_Array$0$0 ==.
	C$RomPattern.c$34$1_0$4 ==.
;	RomPattern.c:34: void Download_Array(void)
;	-----------------------------------------
;	 function Download_Array
;	-----------------------------------------
_Download_Array:
	C$RomPattern.c$36$1_0$4 ==.
;	RomPattern.c:36: x=0;		     /* Start using x = 0 */		
	mov	_x,#0x00
	C$RomPattern.c$37$2_0$5 ==.
;	RomPattern.c:37: for(x= 0;x < 8;x++)   /* For Loop 8 Times for 8 byte array */
	mov	_x,#0x00
00115$:
	mov	a,#0x100 - 0x08
	add	a,_x
	jnc	00151$
	ljmp	00117$
00151$:
	C$RomPattern.c$40$3_0$6 ==.
;	RomPattern.c:40: if(mode == 0) patternData = *Address1++;
	mov	a,_mode
	jnz	00102$
	mov	r5,_Address1
	mov	r6,(_Address1 + 1)
	mov	r7,(_Address1 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_patternData,a
	inc	_Address1
	clr	a
	cjne	a,_Address1,00153$
	inc	(_Address1 + 1)
00153$:
00102$:
	C$RomPattern.c$41$3_0$6 ==.
;	RomPattern.c:41: if(mode == 1) patternData = *Address2++;
	mov	a,#0x01
	cjne	a,_mode,00104$
	mov	r5,_Address2
	mov	r6,(_Address2 + 1)
	mov	r7,(_Address2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_patternData,a
	inc	_Address2
	clr	a
	cjne	a,_Address2,00156$
	inc	(_Address2 + 1)
00156$:
00104$:
	C$RomPattern.c$42$3_0$6 ==.
;	RomPattern.c:42: if(mode == 2) patternData = *Address3++;
	mov	a,#0x02
	cjne	a,_mode,00106$
	mov	r5,_Address3
	mov	r6,(_Address3 + 1)
	mov	r7,(_Address3 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_patternData,a
	inc	_Address3
	clr	a
	cjne	a,_Address3,00159$
	inc	(_Address3 + 1)
00159$:
00106$:
	C$RomPattern.c$43$3_0$6 ==.
;	RomPattern.c:43: if(mode == 3) patternData = *Address4++;
	mov	a,#0x03
	cjne	a,_mode,00108$
	mov	r5,_Address4
	mov	r6,(_Address4 + 1)
	mov	r7,(_Address4 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_patternData,a
	inc	_Address4
	clr	a
	cjne	a,_Address4,00162$
	inc	(_Address4 + 1)
00162$:
00108$:
	C$RomPattern.c$44$3_0$6 ==.
;	RomPattern.c:44: if(mode == 4) patternData = *Address5++;
	mov	a,#0x04
	cjne	a,_mode,00110$
	mov	r5,_Address5
	mov	r6,(_Address5 + 1)
	mov	r7,(_Address5 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_patternData,a
	inc	_Address5
	clr	a
	cjne	a,_Address5,00165$
	inc	(_Address5 + 1)
00165$:
00110$:
	C$RomPattern.c$45$3_0$6 ==.
;	RomPattern.c:45: if(mode == 5) patternData = *Address6++;
	mov	a,#0x05
	cjne	a,_mode,00112$
	mov	r5,_Address6
	mov	r6,(_Address6 + 1)
	mov	r7,(_Address6 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_patternData,a
	inc	_Address6
	clr	a
	cjne	a,_Address6,00168$
	inc	(_Address6 + 1)
00168$:
00112$:
	C$RomPattern.c$46$3_0$6 ==.
;	RomPattern.c:46: RamPattern[x]= patternData; /* Now DownLoad The Next Data To Ram Array */ 
	mov	a,_x
	add	a,#_RamPattern
	mov	r0,a
	mov	@r0,_patternData
	C$RomPattern.c$37$2_0$5 ==.
;	RomPattern.c:37: for(x= 0;x < 8;x++)   /* For Loop 8 Times for 8 byte array */
	mov	a,_x
	inc	a
	mov	_x,a
	ljmp	00115$
00117$:
	C$RomPattern.c$50$2_0$4 ==.
;	RomPattern.c:50: }
	C$RomPattern.c$50$2_0$4 ==.
	XG$Download_Array$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'button'
;------------------------------------------------------------
	G$button$0$0 ==.
	C$RomPattern.c$51$2_0$8 ==.
;	RomPattern.c:51: char button(void)
;	-----------------------------------------
;	 function button
;	-----------------------------------------
_button:
	C$RomPattern.c$53$1_0$8 ==.
;	RomPattern.c:53: if(P0_0) return 0;
	jnb	_P0_0,00102$
	mov	dpl,#0x00
	sjmp	00105$
00102$:
	C$RomPattern.c$54$1_0$8 ==.
;	RomPattern.c:54: delay(1); 
	mov	dptr,#0x0001
	lcall	_delay
	C$RomPattern.c$55$1_0$8 ==.
;	RomPattern.c:55: Download_Array();
	lcall	_Download_Array
	C$RomPattern.c$56$1_0$8 ==.
;	RomPattern.c:56: if(++mode == 6) mode = 0;
	mov	a,_mode
	inc	a
	mov	r7,a
	mov	_mode,r7
	cjne	r7,#0x06,00104$
	mov	_mode,#0x00
00104$:
	C$RomPattern.c$57$1_0$8 ==.
;	RomPattern.c:57: P2 = mode;
	mov	_P2,_mode
	C$RomPattern.c$58$1_0$8 ==.
;	RomPattern.c:58: return 1;
	mov	dpl,#0x01
00105$:
	C$RomPattern.c$59$1_0$8 ==.
;	RomPattern.c:59: }
	C$RomPattern.c$59$1_0$8 ==.
	XG$button$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$RomPattern.c$61$1_0$10 ==.
;	RomPattern.c:61: void main(void)         /* Main entry point */
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$RomPattern.c$63$1_0$10 ==.
;	RomPattern.c:63: SP = 0x60;
	mov	_SP,#0x60
	C$RomPattern.c$64$1_0$10 ==.
;	RomPattern.c:64: mode = 1;
	mov	_mode,#0x01
	C$RomPattern.c$65$1_0$10 ==.
;	RomPattern.c:65: modePtr = &mode;	         /* modePtr now have the address of mode not the data value */
	mov	_modePtr,#_mode
	C$RomPattern.c$66$1_0$10 ==.
;	RomPattern.c:66: patternData = *Address1;	 /* patternPtr now have also the First array Address */ 
	mov	r5,_Address1
	mov	r6,(_Address1 + 1)
	mov	r7,(_Address1 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_patternData,a
	C$RomPattern.c$67$1_0$10 ==.
;	RomPattern.c:67: Download_Array();		 /* Download the data from ROM memory to RAM Array */
	lcall	_Download_Array
	C$RomPattern.c$68$1_0$10 ==.
;	RomPattern.c:68: RamPatternPtr = &RamPattern[0];
	mov	_RamPatternPtr,#_RamPattern
	C$RomPattern.c$69$1_0$10 ==.
;	RomPattern.c:69: while(1)                     /* Forever loop */
00105$:
	C$RomPattern.c$71$3_0$12 ==.
;	RomPattern.c:71: for(x=0;x<8;x++)	 /* Loop 8 Times for 8 byte Array */
	mov	_x,#0x00
00108$:
	mov	a,#0x100 - 0x08
	add	a,_x
	jc	00105$
	C$RomPattern.c$73$4_0$13 ==.
;	RomPattern.c:73: P1 = ~RamPattern[x]; 	/* Complement the Data and Display it */    
	mov	a,_x
	add	a,#_RamPattern
	mov	r1,a
	mov	a,@r1
	cpl	a
	mov	_P1,a
	C$RomPattern.c$74$4_0$13 ==.
;	RomPattern.c:74: delay(5);        		/* To see LED's */
	mov	dptr,#0x0005
	lcall	_delay
	C$RomPattern.c$75$4_0$13 ==.
;	RomPattern.c:75: if(button()) x = 0;         /* Check button */
	lcall	_button
	mov	a,dpl
	jz	00109$
	mov	_x,#0x00
00109$:
	C$RomPattern.c$71$3_0$12 ==.
;	RomPattern.c:71: for(x=0;x<8;x++)	 /* Loop 8 Times for 8 byte Array */
	mov	a,_x
	inc	a
	mov	_x,a
	sjmp	00108$
	C$RomPattern.c$78$1_0$10 ==.
;	RomPattern.c:78: }
	C$RomPattern.c$78$1_0$10 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$Pattern1$0_0$0 == .
_Pattern1:
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
G$Pattern2$0_0$0 == .
_Pattern2:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
G$Pattern3$0_0$0 == .
_Pattern3:
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x81	; 129
G$Pattern4$0_0$0 == .
_Pattern4:
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x18	; 24
G$Pattern5$0_0$0 == .
_Pattern5:
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x28	; 40
	.db #0x14	; 20
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x01	; 1
G$Pattern6$0_0$0 == .
_Pattern6:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x14	; 20
	.db #0x28	; 40
	.db #0x50	; 80	'P'
	.db #0xa0	; 160
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
