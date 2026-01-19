#include <xc.h>
#include <stdlib.h>
#include "PIC18F46K22-Config.h"
#include "LCD.h"

#define _XTAL_FREQ 64000000

void main(void)
{
    OSCCON = 0b01110000;
    OSCTUNE = 0b01000000;

    TRISC = 0;
    TRISD = 0;
    TRISBbits.RB0 = 0;  // Trigger as output
    TRISBbits.RB1 = 1;  // Echo as input

    float distance = 0;
    float time = 0;
    
    ANSELB = 0;

    LCD_init();
    LCD_cursor_set(1,1);
    LCD_write_string("Distance = ");

    // Timer1 Config: Prescaler 1:8, Internal Clock (Fosc/4)
    T1CON = 0b00110100;

    while (1)
    {
        // Reset Timer1
        TMR1L = 0x00;
        TMR1H = 0x00;
        PIR1bits.TMR1IF = 0;

        // Send 10us Trigger Pulse
        
        LATBbits.LATB0 = 1;
        __delay_us(10);
        LATBbits.LATB0 = 0;

        
        while (PORTBbits.RB1 == 0) {
            
        }

        // Start Timer1
        T1CONbits.TMR1ON = 1;

        // Wait for Echo LOW
        while (PORTBbits.RB1 == 1);

        // Stop Timer1
        T1CONbits.TMR1ON = 0;

        // Calculate Time (in microseconds)
        time = ((TMR1H << 8) | TMR1L) * 0.0625;

        // Calculate Distance in cm
        distance = (time * 343) / 2000;

        // Display Distance
        LCD_cursor_set(1,10);
        LCD_write_variable(distance, 3);
        LCD_write_string(" cm");
        
        if(distance < 50)
        {
            LCD_cursor_set(2,1);
            LCD_write_string("Target Detected");
            LATCbits.LATC0 = 1;
        }
        else
        {
            LCD_cursor_set(2,1);
            LCD_write_string("                ");
            LATCbits.LATC0 = 0;
        }
            
        
        __delay_ms(1000);  // Delay before next reading
     }
}