#ifndef ILI9341GFX_H
#define ILI9341GFX_H

#include <avr/io.h>
#include <avr/pgmspace.h>
#include<stdio.h>
#include<stdbool.h>
#include<inttypes.h>


int16_t putchar_printf(char var, FILE *stream);
void drawchar(int16_t x, int16_t y, unsigned char c,uint16_t color, uint16_t bg, uint8_t size);
void setcursor(uint16_t x,uint16_t y);
void settextcolour(uint16_t x,uint16_t y);
void settextsize(uint8_t s);
void write(uint8_t c);
void backuplocationvset(void);
void backuplocationvactual(void);
void backuplocationiset(void);
void backuplocationiactual(void);
void display_init(void);

#endif