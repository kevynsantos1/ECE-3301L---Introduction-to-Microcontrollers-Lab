#include <xc.h>
#include "PIC18F46K22-Config.h"
#define _XTAL_FREQ 64000000

void main(void)
{
    TRISD = 0;
    TRISB = 0;
    
    PORTD = 0;
    PORTB = 0;
    
    OSCCON = 0b01110000;
    OSCTUNE = 0b01000000;
    ANSELD = 0;
    ANSELB = 0;
    
    while(1)
    {
        PORTD = 0x09;
        PORTB = 0x24;
        __delay_ms(3000);
        __delay_ms(3000);
        
        PORTD = 0x09;
        PORTB = 0x12;
        __delay_ms(3000);
        
        PORTD = 0x24;
        PORTB = 0x09;
        __delay_ms(3000);
        __delay_ms(3000);
        
        PORTD = 0x12;
        PORTB = 0x09;
        __delay_ms(3000);
    }
}
