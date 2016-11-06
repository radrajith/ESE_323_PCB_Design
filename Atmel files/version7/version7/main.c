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
//#include "C:/Users/radra/Box Sync/Senior Fall 2016/ESE 323/Atmel files/LCD_ILI9341_ese323/LCD_ILI9341_ese323/ili9341.h"

#define POINTER ILI9341_RED
//#define F_CPU	16000000UL
unsigned int TFTWIDTH = 240;
unsigned int TFTHEIGHT = 320;
#define SPIPORT PORTC_OUT
#define SPIPORT1 PORTC_OUTCLR
#define SPIDDR PORTC_DIR
#define SPIPIN PORTC_IN
#define RESET 2
#define DC 3			// data or command 
#define CS 4			//(remember cs is actually !CS active low)
#define SCK 5
#define MISO 6
#define MOSI 7
//#define F_CPU  32000000UL;
//color address taken from adafruit
#define ILI9341_ALICEBLUE 0xF7DF
#define ILI9341_ANTIQUEWHITE 0xFF5A
#define ILI9341_AQUA 0x07FF
#define ILI9341_AQUAMARINE 0x7FFA
#define ILI9341_AZURE 0xF7FF
#define ILI9341_BEIGE 0xF7BB
#define ILI9341_BISQUE 0xFF38
#define ILI9341_BLACK 0x0000
#define ILI9341_BLANCHEDALMOND 0xFF59
#define ILI9341_BLUE 0x001F
#define ILI9341_BLUEVIOLET 0x895C
#define ILI9341_BROWN 0xA145
#define ILI9341_BURLYWOOD 0xDDD0
#define ILI9341_CADETBLUE 0x5CF4
#define ILI9341_CHARTREUSE 0x7FE0
#define ILI9341_CHOCOLATE 0xD343
#define ILI9341_CORAL 0xFBEA
#define ILI9341_CORNFLOWERBLUE 0x64BD
#define ILI9341_CORNSILK 0xFFDB
#define ILI9341_CRIMSON 0xD8A7
#define ILI9341_CYAN 0x07FF
#define ILI9341_DARKBLUE 0x0011
#define ILI9341_DARKCYAN 0x0451
#define ILI9341_DARKGOLDENROD 0xBC21
#define ILI9341_DARKGRAY 0xAD55
#define ILI9341_DARKGREEN 0x0320
#define ILI9341_DARKKHAKI 0xBDAD
#define ILI9341_DARKMAGENTA 0x8811
#define ILI9341_DARKOLIVEGREEN 0x5345
#define ILI9341_DARKORANGE 0xFC60
#define ILI9341_DARKORCHID 0x9999
#define ILI9341_DARKRED 0x8800
#define ILI9341_DARKSALMON 0xECAF
#define ILI9341_DARKSEAGREEN 0x8DF1
#define ILI9341_DARKSLATEBLUE 0x49F1
#define ILI9341_DARKSLATEGRAY 0x2A69
#define ILI9341_DARKTURQUOISE 0x067A
#define ILI9341_DARKVIOLET 0x901A
#define ILI9341_DEEPPINK 0xF8B2
#define ILI9341_DEEPSKYBLUE 0x05FF
#define ILI9341_DIMGRAY 0x6B4D
#define ILI9341_DODGERBLUE 0x1C9F
#define ILI9341_FIREBRICK 0xB104
#define ILI9341_FLORALWHITE 0xFFDE
#define ILI9341_FORESTGREEN 0x2444
#define ILI9341_FUCHSIA 0xF81F
#define ILI9341_GAINSBORO 0xDEFB
#define ILI9341_GHOSTWHITE 0xFFDF
#define ILI9341_GOLD 0xFEA0
#define ILI9341_GOLDENROD 0xDD24
#define ILI9341_GRAY 0x8410
#define ILI9341_GREEN 0x0400
#define ILI9341_GREENYELLOW 0xAFE5
#define ILI9341_HONEYDEW 0xF7FE
#define ILI9341_HOTPINK 0xFB56
#define ILI9341_INDIANRED 0xCAEB
#define ILI9341_INDIGO 0x4810
#define ILI9341_IVORY 0xFFFE
#define ILI9341_KHAKI 0xF731
#define ILI9341_LAVENDER 0xE73F
#define ILI9341_LAVENDERBLUSH 0xFF9E
#define ILI9341_LAWNGREEN 0x7FE0
#define ILI9341_LEMONCHIFFON 0xFFD9
#define ILI9341_LIGHTBLUE 0xAEDC
#define ILI9341_LIGHTCORAL 0xF410
#define ILI9341_LIGHTCYAN 0xE7FF
#define ILI9341_LIGHTGOLDENRODYELLOW 0xFFDA
#define ILI9341_LIGHTGREEN 0x9772
#define ILI9341_LIGHTGREY 0xD69A
#define ILI9341_LIGHTPINK 0xFDB8
#define ILI9341_LIGHTSALMON 0xFD0F
#define ILI9341_LIGHTSEAGREEN 0x2595
#define ILI9341_LIGHTSKYBLUE 0x867F
#define ILI9341_LIGHTSLATEGRAY 0x7453
#define ILI9341_LIGHTSTEELBLUE 0xB63B
#define ILI9341_LIGHTYELLOW 0xFFFC
#define ILI9341_LIME 0x07E0
#define ILI9341_LIMEGREEN 0x3666
#define ILI9341_LINEN 0xFF9C
#define ILI9341_MAGENTA 0xF81F
#define ILI9341_MAROON 0x8000
#define ILI9341_MEDIUMAQUAMARINE 0x6675
#define ILI9341_MEDIUMBLUE 0x0019
#define ILI9341_MEDIUMORCHID 0xBABA
#define ILI9341_MEDIUMPURPLE 0x939B
#define ILI9341_MEDIUMSEAGREEN 0x3D8E
#define ILI9341_MEDIUMSLATEBLUE 0x7B5D
#define ILI9341_MEDIUMSPRINGGREEN 0x07D3
#define ILI9341_MEDIUMTURQUOISE 0x4E99
#define ILI9341_MEDIUMVIOLETRED 0xC0B0
#define ILI9341_MIDNIGHTBLUE 0x18CE
#define ILI9341_MINTCREAM 0xF7FF
#define ILI9341_MISTYROSE 0xFF3C
#define ILI9341_MOCCASIN 0xFF36
#define ILI9341_NAVAJOWHITE 0xFEF5
#define ILI9341_NAVY 0x0010
#define ILI9341_OLDLACE 0xFFBC
#define ILI9341_OLIVE 0x8400
#define ILI9341_OLIVEDRAB 0x6C64
#define ILI9341_ORANGE 0xFD20
#define ILI9341_ORANGERED 0xFA20
#define ILI9341_ORCHID 0xDB9A
#define ILI9341_PALEGOLDENROD 0xEF55
#define ILI9341_PALEGREEN 0x9FD3
#define ILI9341_PALETURQUOISE 0xAF7D
#define ILI9341_PALEVIOLETRED 0xDB92
#define ILI9341_PAPAYAWHIP 0xFF7A
#define ILI9341_PEACHPUFF 0xFED7
#define ILI9341_PERU 0xCC27
#define ILI9341_PINK 0xFE19
#define ILI9341_PLUM 0xDD1B
#define ILI9341_POWDERBLUE 0xB71C
#define ILI9341_PURPLE 0x8010
#define ILI9341_RED 0xF800
#define ILI9341_ROSYBROWN 0xBC71
#define ILI9341_ROYALBLUE 0x435C
#define ILI9341_SADDLEBROWN 0x8A22
#define ILI9341_SALMON 0xFC0E
#define ILI9341_SANDYBROWN 0xF52C
#define ILI9341_SEAGREEN 0x2C4A
#define ILI9341_SEASHELL 0xFFBD
#define ILI9341_SIENNA 0xA285
#define ILI9341_SILVER 0xC618
#define ILI9341_SKYBLUE 0x867D
#define ILI9341_SLATEBLUE 0x6AD9
#define ILI9341_SLATEGRAY 0x7412
#define ILI9341_SNOW 0xFFDF
#define ILI9341_SPRINGGREEN 0x07EF
#define ILI9341_STEELBLUE 0x4416
#define ILI9341_TAN 0xD5B1
#define ILI9341_TEAL 0x0410
#define ILI9341_THISTLE 0xDDFB
#define ILI9341_TOMATO 0xFB08
#define ILI9341_TURQUOISE 0x471A
#define ILI9341_VIOLET 0xEC1D
#define ILI9341_WHEAT 0xF6F6
#define ILI9341_WHITE 0xFFFF
#define ILI9341_WHITESMOKE 0xF7BE
#define ILI9341_YELLOW 0xFFE0
#define ILI9341_YELLOWGREEN 0x9E66

void spi_init_hardware(){
	SPIDDR |= (1<<DC)|(1<<RESET);		//set DC and RESET to output
	SPIPORT |= (1<<RESET);	//		//output high on RESET
	
}
void spi_init(){
	SPIDDR |= (1<<CS)|(1<<MOSI)|(1<<SCK);		//set cs, mosi, sck as output
	SPIC_CTRL |= (1<<SPI_ENABLE_bp)|(1<<SPI_MASTER_bp);		//enable the SPI and set it as master. (confirm wheater it should be _bm or _bp
	SPIC_CTRL |= (1<<SPI_CLK2X_bp);						//double the spi speed
	//SPIC_CTRL |= (1<<SPI_PRESCALER0_bp);//|(1<<SPI_PRESCALER0_bm); 
	SPIPORT |= (1<<CS);						
}

void spi_send(uint8_t data){					
	SPIC_DATA = data;	//write to data register
	//_delay_ms(5);
	while(!(SPIC_STATUS & (1<<SPI_IF_bp))){}	//wait until the flag is set making data 
}
void spi_writeCommand(uint8_t command){
	SPIPORT &= ~((1<<DC)|(1<<CS));		//dc and cs both set as low to send 
	_delay_us(5);						//delay 5us
	spi_send(command);
	SPIPORT |= (1<<CS);					//cs is set high
}
void spi_writeData(uint8_t data){
	SPIPORT |= (1<<DC);					//dc set high for data
	_delay_us(1);
	SPIPORT &= ~(1<<CS);				//CS set high for 
	spi_send(data);
	SPIPORT |= (1<<CS);
}
void setAddress(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2){
	spi_writeCommand(0x2A);
	spi_writeData(x1>>8);
	spi_writeData(x1);
	spi_writeData(x2>>8);
	spi_writeData(x2);

	spi_writeCommand(0x2B);
	spi_writeData(y1>>8);
	spi_writeData(y1);
	spi_writeData(y2>>8);
	spi_writeData(y2);

	spi_writeCommand(0x2C);
}
void reset(){
	SPIPORT |= (1<<RESET);		//pull RESET high
	_delay_ms(200);
	SPIPORT &= ~(1<<RESET);		//pull RESET low to reset
	_delay_ms(200);
	SPIPORT |= (1<<RESET);		//pull RESET high
	_delay_ms(200);
}
//void clear();
void begin(){
	spi_init_hardware();
	spi_init();
	reset();
	spi_writeCommand(0x01);		//software reset
	_delay_ms(1000);
	//clear(ILI9341_YELLOW);
	//power control A
	spi_writeCommand(0xCB);
	spi_writeData(0x39);
	spi_writeData(0x2C);
	spi_writeData(0x00);
	spi_writeData(0x34);
	spi_writeData(0x02);

	//power control B
	spi_writeCommand(0xCF);
	spi_writeData(0x00);
	spi_writeData(0xC1);
	spi_writeData(0x30);

	//driver timing control A
	spi_writeCommand(0xE8);
	spi_writeData(0x85);
	spi_writeData(0x00);
	spi_writeData(0x78);

	//driver timing control B
	spi_writeCommand(0xEA);
	spi_writeData(0x00);
	spi_writeData(0x00);

	//power on sequence control
	spi_writeCommand(0xED);
	spi_writeData(0x64);
	spi_writeData(0x03);
	spi_writeData(0x12);
	spi_writeData(0x81);

	//pump ratio control
	spi_writeCommand(0xF7);
	spi_writeData(0x20);

	//power control,VRH[5:0]
	spi_writeCommand(0xC0);
	spi_writeData(0x23);

	//Power control,SAP[2:0];BT[3:0]
	spi_writeCommand(0xC1);
	spi_writeData(0x10);

	//vcm control
	spi_writeCommand(0xC5);
	spi_writeData(0x3E);
	spi_writeData(0x28);

	//vcm control 2
	spi_writeCommand(0xC7);
	spi_writeData(0x86);

	//memory access control
	spi_writeCommand(0x36);
	spi_writeData(0x48);

	//pixel format
	spi_writeCommand(0x3A);
	spi_writeData(0x55);

	//frameration control,normal mode full colours
	spi_writeCommand(0xB1);
	spi_writeData(0x00);
	spi_writeData(0x18);

	//display function control
	spi_writeCommand(0xB6);
	spi_writeData(0x08);
	spi_writeData(0x82);
	spi_writeData(0x27);

	//3gamma function disable
	spi_writeCommand(0xF2);
	spi_writeData(0x00);

	//gamma curve selected
	spi_writeCommand(0x26);
	spi_writeData(0x01);

	//set positive gamma correction
	spi_writeCommand(0xE0);
	spi_writeData(0x0F);
	spi_writeData(0x31);
	spi_writeData(0x2B);
	spi_writeData(0x0C);
	spi_writeData(0x0E);
	spi_writeData(0x08);
	spi_writeData(0x4E);
	spi_writeData(0xF1);
	spi_writeData(0x37);
	spi_writeData(0x07);
	spi_writeData(0x10);
	spi_writeData(0x03);
	spi_writeData(0x0E);
	spi_writeData(0x09);
	spi_writeData(0x00);

	//set negative gamma correction
	spi_writeCommand(0xE1);
	spi_writeData(0x00);
	spi_writeData(0x0E);
	spi_writeData(0x14);
	spi_writeData(0x03);
	spi_writeData(0x11);
	spi_writeData(0x07);
	spi_writeData(0x31);
	spi_writeData(0xC1);
	spi_writeData(0x48);
	spi_writeData(0x08);
	spi_writeData(0x0F);
	spi_writeData(0x0C);
	spi_writeData(0x31);
	spi_writeData(0x36);
	spi_writeData(0x0F);

	//exit sleep
	spi_writeCommand(0x11);
	_delay_ms(120);
	//display on
	spi_writeCommand(0x29);

}

void pushColor(uint16_t color){
	spi_writeData(color>>8);			//sending first 8 msb by bitwise shifting to the right by 8
	spi_writeData(color);			//sending the 8
}
void clear(uint16_t color){
	uint16_t i,j;
	setAddress(0,0,TFTWIDTH-1,TFTHEIGHT-1);

	for(i=0;i<TFTWIDTH;i++)
	{
		for(j=0;j<TFTHEIGHT;j++)
		{
			pushColor(color);
		}
	}

}
void drawPixel(uint16_t x1, uint16_t y1, uint16_t color){
	if((x1 < 0) ||(x1 >=TFTWIDTH) || (y1 < 0) || (y1 >=TFTHEIGHT)) {
		return;
	}
	setAddress(x1,y1,x1+1,y1+1);

	pushColor(color);
}

//vertical line
void drawVLine(uint16_t x, uint16_t y, uint16_t h, uint16_t color){
	if((x >=TFTWIDTH) || (y >=TFTHEIGHT)) return;
	if((y+h-1)>=TFTHEIGHT)
	h=TFTHEIGHT-y;
	setAddress(x,y,x,y+h-1);
	while(h--)
	{
		pushColor(color);
	}
}
//horizontal line
void drawHLine(uint16_t x, uint16_t y, uint16_t w, uint16_t color){
	if((x >=TFTWIDTH) || (y >=TFTHEIGHT)) {
		return;
	}
	if((x+w-1)>=TFTWIDTH)
	w=TFTWIDTH-x;
	setAddress(x,y,x+w-1,y);
	while(w--)
	{
		pushColor(color);
	}
}
void fillrect(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color){
	if((x >=TFTWIDTH) || (y >=TFTHEIGHT)){
		return;
	}
	if((x+w-1)>=TFTWIDTH)
	w=TFTWIDTH-x;
	if((y+h-1)>=TFTHEIGHT)
	h=TFTHEIGHT-y;

	setAddress(x, y, x+w-1, y+h-1);

	for(y=h; y>0; y--)
	{
		for(x=w; x>0; x--)
		{
			pushColor(color);
		}
	}
}
void fillScreen(uint16_t color){
	clear(color);
}

void setRotation(uint8_t x){
	uint8_t rotation;
	spi_writeCommand(0x36);
	rotation=x%4;
	switch (rotation)
	{
		case 0:
		spi_writeCommand(0x40|0x08);
		TFTWIDTH = 240;
		TFTHEIGHT = 320;
		break;
		case 1:
		spi_writeCommand(0x20|0x08);
		TFTWIDTH  = 320;
		TFTHEIGHT = 240;
		break;
		case 2:
		spi_writeCommand(0x80|0x08);
		TFTWIDTH  = 240;
		TFTHEIGHT = 320;
		break;
		case 3:
		spi_writeCommand(0x40|0x80|0x20|0x08);
		TFTWIDTH  = 320;
		TFTHEIGHT = 240;
		break;
	}
}



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