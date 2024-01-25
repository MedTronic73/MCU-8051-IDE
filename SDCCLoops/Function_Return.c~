/*****************************************************************************************
'*  Name    : Function_Return.c                                     			 *
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

int sum_while(int sum , char i);			/* Function Declaration */
int sum_Do   (int sum , char i);			/* Function Declaration */
int sum_For  (int sum , char i);			/* Function Declaration */

void main (void)			/* Main Function Body */
{
	int My_sum ; char My_Count;
	My_sum = 0;My_Count = 10;
	P1 = sum_For(My_sum,My_Count);			/* Third Function Call */
	P2 = sum_Do(My_sum,My_Count);			/* Secound Function Call */
	P3 = sum_while(My_sum,My_Count);		/* First Function Call */
}

int sum_while(int sum , char i)   /* First Function Body */
	{			  /* sum take My_sum (0) Value and i take My_Count(10) */
	while(i < 10)		  /* As i < 10 Loop then this function not run */
		{
		sum += i;	  /* Accumlate sum */
	       	    i++ ;	  /* Increment i by 1 */
		}
	return sum;		  /* Now we found it returns a 0 which is the argument */
	}

int sum_Do(int sum , char i)	  /* Second Function Body */
	{			  /* sum take My_sum (0) Value and i take My_Count(10) */
	do			  /* with do loop one time at least run even the */
		{		  /* Condition is False from Start */
		sum += i;	  /* Accumlate sum */
	     	i++ ;		  /* Increment i by 1 */
		}while (i < 10);  /* As i < 10 Loop else exit */
	return sum;
	}

int sum_For(int sum , char i)	  /* Third Function Body */
	{			  /* sum take My_sum (0) Value and i take My_Count(10) */
	for (i = 0; i < 10 ; i++) /* For Loop statment */
		{		  /* Test Statment as ++i and i++ is the same */
		sum += i;	  /* Accumlate sum here no need for increment*/
		}
	return sum;		  /* Now the function return an int value */
	}
