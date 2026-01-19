
#include <xc.h>
#include "PIC18F46K22-Config.h"
#define _XTAL_FREQ 64000000

#define rollbutton PORTBbits.RB4

static unsigned int randseed;
unsigned int rolldice()
{
    randseed = (randseed * 37 + 13)%2333;
    return (randseed % 6) + 1;
}

void main(void) {
    randseed = TMR0L;
    
    PORTC = 0;
    PORTD = 0;
    LATBbits.LATB4=0;
    TRISC = 0;
    TRISD = 0;
    TRISBbits.TRISB4=1;
    
    OSCCON = 0b01110000;
    OSCTUNE = 0b01000000;
    ANSELB = 0;

    int array[7] = {0, 0x08, 0x22, 0x2A, 0x55, 0x5D, 0x77};
    unsigned int diceval;
    unsigned int arrayval;
    
    while (1){
                
        if (rollbutton == 0)
        {
            __delay_ms(50);
            diceval = rolldice();
            arrayval=array[diceval];
            PORTC = arrayval;
            
            diceval = rolldice();
            arrayval=array[diceval];
            PORTD = arrayval;
            
            __delay_ms(3000);
            PORTC = 0;
            PORTD = 0;
            
            randseed ^= (diceval * 13) + TMR0L;
        }
        else
        {
            PORTC = 0;
            PORTD = 0;
        }
    }
}
