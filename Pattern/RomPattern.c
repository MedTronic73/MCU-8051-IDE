#include<8051.h>        /* definition file */
/*must add --iram-size 0x80 to sdcc, or SP will be cleared by the default init code*/
__code char Pattern1[] = {0x80,0x40,0x20,0x10,0x08,0x04,0x02,0x01};
__code char Pattern2[] = {0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};
__code char Pattern3[] = {0x81,0x42,0x24,0x18,0x18,0x24,0x42,0x81};
__code char Pattern4[] = {0x18,0x24,0x42,0x81,0x81,0x42,0x24,0x18};
__code char Pattern5[] = {0xA0,0x50,0x28,0x14,0x0A,0x05,0x02,0x01};
__code char Pattern6[] = {0x01,0x02,0x05,0x0A,0x14,0x28,0x50,0xA0};

const char *Address1 = &Pattern1[0]; /* Pointe to every pattern by a Pointer for it */	
const char *Address2 = &Pattern2[0]; /* Every Pointer will be at ram and pointe to Rom */
const char *Address3 = &Pattern3[0];	
const char *Address4 = &Pattern4[0];	
const char *Address5 = &Pattern5[0];	
const char *Address6 = &Pattern6[0];	

const char *patternAddress = &Pattern1[0]; /* General Pointer for the start Array */	

char RamPattern[8]; /* Declare a RamPattern Array to get any array to it */

/* unsigned char * __code patternPtr; */
__data __at(0x40) unsigned char patternData;

__data __at(0x42) static char mode;
__data __at(0x43) static char *modePtr;
__data __at(0x44) static char x;
__data __at(0x45) static char *RamPatternPtr;

/*----------------------------------------------------------------------------------------*/
void delay(int ms )            /* How to get 125mS.. */
    {
    		             /* The while statement consumes 11.89uS (11 clock cycles )*/
    while(ms--);             /* So 1000 / 11.89uS = 91 for 1 msec */
    }          
/*----------------------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------------------*/
void Download_Array(void)    /* Function to Download array from ROM To RAM */
{
       x=0;		     /* Start using x = 0 */		
       for(x= 0;x < 8;x++)   /* For Loop 8 Times for 8 byte array */
            {
 /* Get the pattern Data From the apropriate Address Pointer and after increment Pointer */
       if(mode == 0) patternData = *Address1++;
       if(mode == 1) patternData = *Address2++;
       if(mode == 2) patternData = *Address3++;
       if(mode == 3) patternData = *Address4++;
       if(mode == 4) patternData = *Address5++;
       if(mode == 5) patternData = *Address6++;
       RamPattern[x]= patternData; /* Now DownLoad The Next Data To Ram Array */ 
            }
}
/*----------------------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------------------*/
char button(void)
    {
    if(P0_0) return 0;
    delay(1); 
    Download_Array();
    if(++mode == 6) mode = 0;
    P2 = mode;
    return 1;
    }
/*----------------------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------------------*/
void main(void)         /* Main entry point */
    {
    SP = 0x60;
    mode = 1;
    modePtr = &mode;	         /* modePtr now have the address of mode not the data value */
    patternData = *Address1;	 /* patternPtr now have also the First array Address */ 
    Download_Array();		 /* Download the data from ROM memory to RAM Array */
    RamPatternPtr = &RamPattern[0];
    while(1)                     /* Forever loop */
        { 
        for(x=0;x<8;x++)	 /* Loop 8 Times for 8 byte Array */
            {
            P1 = ~RamPattern[x]; 	/* Complement the Data and Display it */    
            delay(5);        		/* To see LED's */
            if(button()) x = 0;         /* Check button */
            }
         }  
      }
/*----------------------------------------------------------------------------------------*/

