#include <xc.h>
#include <stdlib.h>
#include "PIC18F46K22-Config.h"
#include "LCD.h"
#define _XTAL_FREQ 64000000

void main(void)
{   
    OSCCON = 0b01110000;
    OSCTUNE= 0b01000000;
    ANSELB = 0;
    
    LCD_init();
    LCD_cursor_set(1, 1);

    float count = 0, round = 0;

    LCD_cursor_set(1, 1);
    LCD_write_string("Counter = ");
    LCD_cursor_set(2, 1);
    LCD_write_string("Round = ");
    while(1)
    {
        if(count == 15)
        {
            count = 0;
            ++round;
        }
        else
        {
            ++count;
        }
        LCD_cursor_set(1, 10);
        LCD_write_variable(count, 3);
        LCD_cursor_set(2, 10);
        LCD_write_variable(round, 3);
        __delay_ms(500);

    }
    
    

}
