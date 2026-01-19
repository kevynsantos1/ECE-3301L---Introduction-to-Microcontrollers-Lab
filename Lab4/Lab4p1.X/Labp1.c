#include <xc.h>
#include <stdlib.h>
#include "PIC18F46K22-Config.h"
#include "LCD.h"
#define _XTAL_FREQ 64000000

void main(void)
{
    /*OSCCON = 0b01110000;
    OSCTUNE = 0b01000000;
    
    LCD_init();
    int round = 0;
    int counter = 0;
    
    
    while(1)
    {
        
        LCD_cursor_set(1,1);
        LCD_write_string("Counter = ");
        LCD_write_variable(counter,0);
        
        LCD_cursor_set(2,1);
        LCD_write_string("Round = ");
        LCD_write_variable(round,0);
        
        __delay_ms(500);
        
        counter++;
        
        if (counter >= 15)
        {
            counter = 0;
            //when counter is set to 0 it doesnt clear the second digit in the lcd
            round++;
        }

    }  */
    
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