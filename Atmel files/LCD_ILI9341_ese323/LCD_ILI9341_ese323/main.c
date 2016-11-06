/*
 * LCD_ILI9341_ese323.c
 *
 * Created: 11/26/2016 9:32:15 PM
 *  Author: radrajith
 */ 



#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <avr/pgmspace.h>
#include <limits.h>
#include <ili9341.h>


int main(void)
{
	begin();					//initialize driver
	clear(ILI9341_RED);		//clear the 
	setRotation(2);				//change this between 0 and 3 depending on the orientation of the 
    while(1)
    {
	//_delay_ms(1000);
        //TODO:://write to data register Please write your application code 
		clear(ILI9341_GREENYELLOW);
		//_delay_ms(100);
		clear(ILI9341_BLUE);
		clear(ILI9341_YELLOW);
		clear(ILI9341_SILVER);
		//_delay_ms(100);
    }
}