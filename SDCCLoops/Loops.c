/*****************************************************************************************
'*  Name    : Loops.c                                     			 *
'*  Author  : MedTronic Eng.MedhatSaber                                			 * 
'*  Notice  : Copyright (c) 2023 MedTronic @SDCC for 8051             			 *
'*          : All Rights Reserved                                      			 *
'*  Date    : 08/01/2024                                               			 *
'*  Version : 1.1                                                      			 *
'*  Notes   : Test SDCC C compiler for 8051 All Loops Functions        			 *
'*  Device  : AT89x51									 *
'*  Xtal    : 12 Mhz									 *
'*****************************************************************************************/
#include <at89x51.h>
int sum; char i;			/* Variale Declaration */

void sum_while(void);			/* Function Declaration */
void sum_Do(void);			/* Function Declaration */
void sum_For(void);			/* Function Declaration */

void main (void)			/* Main Function Body */
{
	sum_while();			/* First Function Call */
	P1 = sum;			/* Show The Result     */
	sum_Do();			/* First Function Call */
	P2 = sum;			/* Show The Result     */
	sum_For();			/* First Function Call */
	P3 = sum;			/* Show The Result     */
}

void sum_while(void)  			/* First Function Body */
	{
	sum = 0;			/* Reset sum to 0 at start */
	while(i < 10)			/* As i < 10 Loop */
		{
		sum += i;		/* Accumlate sum */
	       	    i++ ;		/* Increment i by 1 */
		}
	}

void sum_Do(void)			/* Second Function Body */
	{
	sum = 0;			/* Reset sum to 0 at start */
	do				/* with do loop one time at least run even the */
		{			/* Condition is False from Start */
		sum += i;		/* Accumlate sum */
	     	i++ ;			/* Increment i by 1 */
		}while (i < 10);	/* As i < 10 Loop else exit */
	}

void sum_For(void)			/* Second Function Body */
	{
	sum = 0;			/* Reset sum to 0 at start */
	for (i = 0; i < 10 ; i++)	/* For Loop statment */
		{			/* Test Statment as ++i and i++ is the same */
		sum += i;		/* Accumlate sum here no need for increment*/
		}
	}
