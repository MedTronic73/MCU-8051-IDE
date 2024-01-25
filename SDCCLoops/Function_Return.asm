;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW32)
;--------------------------------------------------------
	.module Function_Return
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
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
	.globl _A
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
	.globl _sum_For_PARM_2
	.globl _sum_Do_PARM_2
	.globl _sum_while_PARM_2
	.globl _sum_while
	.globl _sum_Do
	.globl _sum_For
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
G$A$0_0$0 == 0x00e0
_A	=	0x00e0
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
G$FL$0_0$0 == 0x00d1
_FL	=	0x00d1
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
LFunction_Return.sum_while$i$1_0$6==.
_sum_while_PARM_2:
	.ds 1
LFunction_Return.sum_Do$i$1_0$9==.
_sum_Do_PARM_2:
	.ds 1
LFunction_Return.sum_For$i$1_0$12==.
_sum_For_PARM_2:
	.ds 1
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;My_sum                    Allocated to registers 
;My_Count                  Allocated to registers 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$Function_Return.c$18$0_0$5 ==.
;	Function_Return.c:18: void main (void)			/* Main Function Body */
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$Function_Return.c$22$1_0$5 ==.
;	Function_Return.c:22: P1 = sum_For(My_sum,My_Count);			/* Third Function Call */
	mov	_sum_For_PARM_2,#0x0a
	mov	dptr,#0x0000
	lcall	_sum_For
	mov	r6,dpl
	mov	_P1,r6
	C$Function_Return.c$23$1_0$5 ==.
;	Function_Return.c:23: P2 = sum_Do(My_sum,My_Count);			/* Secound Function Call */
	mov	_sum_Do_PARM_2,#0x0a
	mov	dptr,#0x0000
	lcall	_sum_Do
	mov	r6,dpl
	mov	_P2,r6
	C$Function_Return.c$24$1_0$5 ==.
;	Function_Return.c:24: P3 = sum_while(My_sum,My_Count);		/* First Function Call */
	mov	_sum_while_PARM_2,#0x0a
	mov	dptr,#0x0000
	lcall	_sum_while
	mov	r6,dpl
	mov	_P3,r6
	C$Function_Return.c$25$1_0$5 ==.
;	Function_Return.c:25: }
	C$Function_Return.c$25$1_0$5 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sum_while'
;------------------------------------------------------------
;i                         Allocated with name '_sum_while_PARM_2'
;sum                       Allocated to registers r6 r7 
;------------------------------------------------------------
	G$sum_while$0$0 ==.
	C$Function_Return.c$27$1_0$7 ==.
;	Function_Return.c:27: int sum_while(int sum , char i)   /* First Function Body */
;	-----------------------------------------
;	 function sum_while
;	-----------------------------------------
_sum_while:
	mov	r6,dpl
	mov	r7,dph
	C$Function_Return.c$29$1_0$7 ==.
;	Function_Return.c:29: while(i < 10)		  /* As i < 10 Loop then this function not run */
00101$:
	mov	a,#0x100 - 0x0a
	add	a,_sum_while_PARM_2
	jc	00103$
	C$Function_Return.c$31$2_0$8 ==.
;	Function_Return.c:31: sum += i;	  /* Accumlate sum */
	mov	r4,_sum_while_PARM_2
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	C$Function_Return.c$32$2_0$8 ==.
;	Function_Return.c:32: i++ ;	  /* Increment i by 1 */
	inc	_sum_while_PARM_2
	sjmp	00101$
00103$:
	C$Function_Return.c$34$1_0$7 ==.
;	Function_Return.c:34: return sum;		  /* Now we found it returns a 0 which is the argument */
	mov	dpl,r6
	mov	dph,r7
	C$Function_Return.c$35$1_0$7 ==.
;	Function_Return.c:35: }
	C$Function_Return.c$35$1_0$7 ==.
	XG$sum_while$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sum_Do'
;------------------------------------------------------------
;i                         Allocated with name '_sum_Do_PARM_2'
;sum                       Allocated to registers r6 r7 
;------------------------------------------------------------
	G$sum_Do$0$0 ==.
	C$Function_Return.c$37$1_0$10 ==.
;	Function_Return.c:37: int sum_Do(int sum , char i)	  /* Second Function Body */
;	-----------------------------------------
;	 function sum_Do
;	-----------------------------------------
_sum_Do:
	mov	r6,dpl
	mov	r7,dph
	C$Function_Return.c$39$1_0$10 ==.
;	Function_Return.c:39: do			  /* with do loop one time at least run even the */
00101$:
	C$Function_Return.c$41$2_0$11 ==.
;	Function_Return.c:41: sum += i;	  /* Accumlate sum */
	mov	r4,_sum_Do_PARM_2
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	C$Function_Return.c$42$2_0$11 ==.
;	Function_Return.c:42: i++ ;		  /* Increment i by 1 */
	inc	_sum_Do_PARM_2
	C$Function_Return.c$43$1_0$10 ==.
;	Function_Return.c:43: }while (i < 10);  /* As i < 10 Loop else exit */
	mov	a,#0x100 - 0x0a
	add	a,_sum_Do_PARM_2
	jnc	00101$
	C$Function_Return.c$44$1_0$10 ==.
;	Function_Return.c:44: return sum;
	mov	dpl,r6
	mov	dph,r7
	C$Function_Return.c$45$1_0$10 ==.
;	Function_Return.c:45: }
	C$Function_Return.c$45$1_0$10 ==.
	XG$sum_Do$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sum_For'
;------------------------------------------------------------
;i                         Allocated with name '_sum_For_PARM_2'
;sum                       Allocated to registers r6 r7 
;------------------------------------------------------------
	G$sum_For$0$0 ==.
	C$Function_Return.c$47$1_0$13 ==.
;	Function_Return.c:47: int sum_For(int sum , char i)	  /* Third Function Body */
;	-----------------------------------------
;	 function sum_For
;	-----------------------------------------
_sum_For:
	mov	r6,dpl
	mov	r7,dph
	C$Function_Return.c$49$2_0$14 ==.
;	Function_Return.c:49: for (i = 0; i < 10 ; i++) /* For Loop statment */
	mov	_sum_For_PARM_2,#0x00
00102$:
	C$Function_Return.c$51$3_0$15 ==.
;	Function_Return.c:51: sum += i;	  /* Accumlate sum here no need for increment*/
	mov	r4,_sum_For_PARM_2
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	C$Function_Return.c$49$2_0$14 ==.
;	Function_Return.c:49: for (i = 0; i < 10 ; i++) /* For Loop statment */
	inc	_sum_For_PARM_2
	mov	a,#0x100 - 0x0a
	add	a,_sum_For_PARM_2
	jnc	00102$
	C$Function_Return.c$53$1_0$13 ==.
;	Function_Return.c:53: return sum;		  /* Now the function return an int value */
	mov	dpl,r6
	mov	dph,r7
	C$Function_Return.c$54$1_0$13 ==.
;	Function_Return.c:54: }
	C$Function_Return.c$54$1_0$13 ==.
	XG$sum_For$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
