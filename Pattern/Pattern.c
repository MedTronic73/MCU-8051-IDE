#include<8051.h>        /* definition file */
/*must add --iram-size 0x80 to sdcc, or SP will be cleared by the default init code*/
char Pattern1[] = {0x80,0x40,0x20,0x10,0x08,0x04,0x02,0x01};
char Pattern2[] = {0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};
char Pattern3[] = {0x81,0x42,0x24,0x18,0x18,0x24,0x42,0x81};
char Pattern4[] = {0x18,0x24,0x42,0x81,0x81,0x42,0x24,0x18};
char Pattern5[] = {0xA0,0x50,0x28,0x14,0x0A,0x05,0x02,0x01};
char Pattern6[] = {0x01,0x02,0x05,0x0A,0x14,0x28,0x50,0xA0};

char RamPattern[8];

char *patternPtr;

__data __at(0x50) static char mode;
__data __at(0x51) static char *modePtr;
__data __at(0x52) static char x;
__data __at(0x53) static char *RamPatternPtr;

void delay(int ms )            /* How to get 125mS.. */
    {
    		             /* The while statement consumes 11.89uS (11 clock cycles )*/
    while(ms--);            /* So 1000 / 11.89uS = 91 for 1 msec */
    }          
char button(void)
    {
    if(P0_0) return 0;
 /*   delay(); */
    if(++mode == 8) mode = 0;
    if(mode == 0) patternPtr = &Pattern1[0];
    if(mode == 1) patternPtr = &Pattern2[0];
    if(mode == 2) patternPtr = &Pattern3[0];
    if(mode == 3) patternPtr = &Pattern4[0];
    if(mode == 4) patternPtr = &Pattern5[0];
    if(mode == 5) patternPtr = &Pattern6[0];
    P2 = mode;
    return 1;
    }
void main(void)         /* Main entry point */
    {
    SP = 0x60;
    mode = 1;
    modePtr = &mode;	/* modePtr now have the address of mode not the data value */
    patternPtr = &Pattern1[0];	/* patternPtr now have also the secound array Address */ 
    RamPatternPtr = &RamPattern[0];
    while(1)           /* Forever loop */
        {
        for(x=0;x<8;x++)
            {
            P1 = patternPtr[x];     
            delay(1);        		/* To see LED's */
            if(button()) x = 0;         /* Check button */
            }
         }  
      }

