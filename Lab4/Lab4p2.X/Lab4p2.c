#include <xc.h>
#include "PIC18F46K22-Config.h"
#define _XTAL_FREQ 64000000

void main(void)
{
    unsigned char code[10] = {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x03, 0x78,
    0x00, 0x18};
    
    OSCCON = 0b01110000;
    OSCTUNE = 0b01000000;
    ANSELB = 0;
    
    ANSELC = 0;
    ANSELDbits.ANSD4 = 0;
    ANSELDbits.ANSD5 = 0;
    
    TRISB = 0;
    TRISC = 0;
    TRISDbits.TRISD4 = 0;
    TRISDbits.TRISD5 = 0;
    
    LATB = 0;
    LATC = 0;
    LATDbits.LATD4 = 0;
    LATDbits.LATD5 = 0;
    
    int i = 0;
    int j = 0;
    
    LATDbits.LATD4 = 1;
    LATDbits.LATD5 = 1;
    
    for (int k=0; k<100; k++)
    {
   
        PORTC = code[i];
        PORTB = code[j];
        
        __delay_ms(500);
        
        i++;
        
        
        if (i==10)
        {
            i=0;
            j++;
        }
        
        
        if(j==6)
        {
            j=0;
        }
        
        
    }
    
    
}