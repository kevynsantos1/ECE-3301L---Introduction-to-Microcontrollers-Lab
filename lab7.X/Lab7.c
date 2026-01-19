#include <xc.h>
#include "PIC18F46K22-Config.h"
#include <stdlib.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>

#define _XTAL_FREQ 16000000

//my button RB0
#define BUTTON PORTBbits.RB0

void pwm_setup(int counter)
{
    if (counter == 0)
    {
        CCP1CON = 0x00;
        CCPR1L = 0x00;
        TRISCbits.TRISC2 = 0;
        CCP1CON = 0x0C;
    }
    else if (counter == 1)
    {
        CCP1CON = 0x00;
        CCPR1L = 0x19;
        TRISCbits.TRISC2 = 0;
        CCP1CON = 0x0C;
    }
    else if (counter == 2)
    {
        CCP1CON = 0x00;
        CCPR1L = 0x32;
        TRISCbits.TRISC2 = 0;
        CCP1CON = 0x0C;
    }
    else if (counter == 3)
    {
        CCP1CON = 0x00;
        CCPR1L = 0x4B;
        TRISCbits.TRISC2 = 0;
        CCP1CON = 0x0C;
    }
    else if (counter == 4)
    {
        CCP1CON = 0x00;
        CCPR1L = 0x64;
        TRISCbits.TRISC2 = 0;
        CCP1CON = 0x0C;
    }
    else if (counter == 5)
    {
        CCP1CON = 0x00;
        CCPR1L = 0x7D;
        TRISCbits.TRISC2 = 0;
        CCP1CON = 0x0C;
    }
}

void main (void)
{
    PR2 = 124;
    
    TRISBbits.TRISB0 = 1;
    ANSELB = 0;
    
    TRISCbits.TRISC2 = 0;
    ANSELC = 0;
    
    int counter = 3;
    
    T2CON = 0x02;
    TMR2=0;
    
    
    while (1)
    {
        
            pwm_setup(counter);
            
            counter = counter + 1;
            if (counter == 6)
            {
                counter = 0;
            }
        
        __delay_ms(50);
        while (BUTTON == 1)
        {
            PIR1bits.TMR2IF = 0;
            T2CONbits.TMR2ON = 1;
            while (PIR1bits.TMR2IF == 0);
        }
    }
}