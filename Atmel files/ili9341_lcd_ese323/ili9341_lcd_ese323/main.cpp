/*
 * ili9341_lcd_ese323.cpp
 *
 * Created: 11/26/2016 8:08:56 PM
 *  Author: radrajith
 */ 


#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include "C:\Users\radra\Box Sync\Senior Fall 2016\ESE 323\Atmel files\ili9341_lcd_ese323\ili9341_lcd_ese323\ili9341.h"

#define POINTER ILI9341_RED
int main(void)
{
	//F_CPU |= 32000000;
	begin();					//initialize driver
	clear(ILI9341_BLACK);		//clear the screen
	_delay_ms(1000);
	setRotation(3);				//change this between 0 and 3 depending on the orinetation of the screen
	
    while(1)
    {
        //TODO:: Please write your application code 
		fillScreen(ILI9341_RED);
		_delay_ms(1000);
		fillScreen(ILI9341_BLUE);
		_delay_ms(1000);
		
    }
}