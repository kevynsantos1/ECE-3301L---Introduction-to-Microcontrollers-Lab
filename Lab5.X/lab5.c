#include <xc.h>
#include <stdlib.h>
#include "PIC18F46K22-Config.h"
#define _XTAL_FREQ 8000000

unsigned int ADCONRESULT; //make ADCONRESULT an int 
float FINAL;


int main(void) {
    OSCCON = 0b01110000;
    OSCTUNE= 0b00000000;
    
    ANSELB = 0;
    ANSELD = 0;
    ANSELAbits.ANSA0 = 1;
    
    TRISA = 0x01;
    TRISB = 0;
    TRISD = 0;
    
    //ADC Setup
    ADCON0 = 0x01; //00000001
    ADCON1 = 0x00; //00000000
    ADCON2 = 0xA2; //10100010
    
    //ADC Interrupt Setup
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    PIE1bits.ADIE = 1;
    PIR1bits.ADIF = 0;
    
    
    while(1)
    {
        ADCON0bits.GO = 1;
    }
}

void __interrupt(high_priority) ISR_high()
{
    //PORTD = D1;
    //PORTB = D0;
    if (PIR1bits.ADIF == 1)
    {
        
        PIR1bits.ADIF = 0;
    
        ADCONRESULT = ((ADRESH << 8) | ADRESL);
        FINAL = ADCONRESULT/204.6;
    
        if (FINAL <= 0.5)
        {
            LATB = 0b00000001;
            LATD = 0b00000000;
        }
        else if (FINAL <= 1)
        {
            LATB = 0b00000011;
            LATD = 0b00000000;
        }
        else if (FINAL <= 1.5)
        {
            LATB = 0b00000111;
            LATD = 0b00000000;
        }
        else if (FINAL <= 2)
        {
            LATB = 0b00001111;
            LATD = 0b00000000;
        }
        else if (FINAL <= 2.5)
        {
            LATB = 0b00011111;
            LATD = 0b00000000;
        }
        else if (FINAL <= 3)
        {
            LATB = 0b00111111;
            LATD = 0b00000000;
        }
        else if (FINAL <= 3.5)
        {
            LATB = 0b01111111;
            LATD = 0b00000000;
        }
        else if (FINAL <= 4)
        {
            LATB = 0b11111111;
            LATD = 0b00000000;
        }
        else if (FINAL <= 4.5)
        {
            LATB = 0b11111111;
            LATD = 0b00000001;
        }
        else if (FINAL <= 5)
        {
            LATB = 0b11111111;
            LATD = 0b00000011;
        }
        else if (FINAL>5)
        {
            LATB = 0b11111111;
            LATD = 0b00000011;
        }
    
        __delay_ms(250);
        ADCON0bits.GO = 1;
    
    }
}