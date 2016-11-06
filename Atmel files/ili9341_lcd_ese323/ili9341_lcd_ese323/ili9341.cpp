#include "ili9341.h"


void spi_init_hardware(){
	SPIDDR |= (1<<DC)|(1<<RST);		//set DC and RST to output
	SPIPORT |= (1<<RST);	//		//output high on RST
	
	}
void spi_init(){
	SPIDDR |= (1<<CS)|(1<<MOSI)|(1<<SCK);		//set cs, mosi, sck as output
	SPIC_CTRL = (1<<SPI_ENABLE_bm)|(1<<SPI_MASTER_bm);		//enable the SPI and set it as master. (confirm wheater it should be _bm or _bp
	SPIC_STATUS |= (1<<SPI_CLK2X_bm);						//double the spi speed
	SPIPORT != (1<<CS);						//select the slave by making cs high
	}
	
void spi_send(unsigned char data){
	SPIC_DATA = data;						//write to data register
	while(!(SPIC_STATUS & (1<<SPI_IF_bm)));	//wait until the flag is set making data sent
	
}
void spi_writeCommand(uint8_t command){
	SPIPORT &= ~((1<<DC)|(1<<CS));		//dc and cs both set as low to send command
	_delay_us(5);						//delay 5us
	spi_send(command);
	SPIPORT |= (1<<CS);					//cs is set high  
}
void spi_writeData(uint8_t data){
	SPIPORT |= (1<<DC);					//dc set high for data		
	_delay_us(1);
	SPIPORT &= ~(1<<CS);				//CS set high for slave 
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
	spi_writeData(y2);
	spi_writeData(y2);

	spi_writeCommand(0x2C);
}
void reset(){
	SPIPORT |= (1<<RST);		//pull rst high
	_delay_ms(200);
	SPIPORT &= ~(1<<RST);		//pull rst low to reset
	_delay_ms(200);
	SPIPORT |= (1<<RST);		//pull rst high
	_delay_ms(200);
}
void begin(){
	spi_init_hardware();
	spi_init();
	reset();
	spi_writeCommand(0x01);		//software reset
	_delay_ms(1000);
	
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
	spi_writeCommand(color>>8);			//sending first 8 msb by bitwise shifting to the right by 8
	spi_writeCommand(color);			//sending the 8 
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

