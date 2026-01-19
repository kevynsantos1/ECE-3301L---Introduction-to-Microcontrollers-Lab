#include <xc.h>
#include <stdlib.h>
#include "PIC18F46K22-Config.h"
#include "LCD.h"
#define _XTAL_FREQ 64000000

void StartSignal(void)
{
    TRISBbits.TRISB0 = 0;
    LATBbits.LATB0 = 0;
    __delay_ms(18);
    LATBbits.LATB0 = 1;
    __delay_us(40);
    TRISBbits.TRISB0 = 1;
}

unsigned char SensorResponse(void) 
{ 
    if (!PORTBbits.RB0) 
    { 
        __delay_us(80);
        if (PORTBbits.RB0) 
        { 
            __delay_us(80);
            return 1; 
        }
    }
    return 0;
}

char CollectData()
{
  char i,data = 0;  
    for(i=0;i<8;i++)
    {
        while(!PORTBbits.RB0);
        __delay_us(30);         
        if(PORTBbits.RB0)
        {
            data = ((data<<1) | 1);
        }   
           
        else
        { 
          data = (data<<1); 
        }
        while(PORTBbits.RB0);
    }
  return data;
}


int main(void) 
{
    char humWhole,humFrac,tempWhole,tempFrac;
    char checkSum;
    
    OSCCON = 0b01110000;
    OSCTUNE= 0b01000000;
    ANSELB = 0;
    ANSELD = 0;
    
    __delay_ms(1000);
    
    LCD_init();
    
    while(1)
    {
        
        StartSignal();
        SensorResponse();
        
        humWhole = CollectData(); 
    	humFrac = CollectData(); 
    	tempWhole = CollectData();
    	tempFrac = CollectData();
    	checkSum = CollectData(); 
        
        LCD_cursor_set(1,1);
        LCD_write_string("Temp=");
        LCD_write_variable(tempWhole, 2);
        LCD_write_string(".");
        LCD_write_variable(tempFrac, 1);
        LCD_write_string("C");
        LCD_cursor_set(1,11);
        LCD_write_string("  ");
        
        LCD_cursor_set(2,1);
        LCD_write_string("Humidity=");
        LCD_write_variable(humWhole,2);
        LCD_write_string(".");
        LCD_write_variable(humFrac,1);
        LCD_write_string("%");
        LCD_cursor_set(2,15);
        LCD_write_string("  ");
        
        __delay_ms(500);
    }

    
    
}


