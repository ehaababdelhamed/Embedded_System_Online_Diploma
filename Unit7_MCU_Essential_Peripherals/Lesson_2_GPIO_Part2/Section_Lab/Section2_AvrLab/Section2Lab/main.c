/*
 * main.c
 *
 *  Created on: ???/???/????
 *      Author: Ehab Mohamed
 */
#include <util/delay.h>
#include "Keypad_Driver/keypad.h"
#include "LCD_Driver/lcd.h"

#define F_CPU 	(8000000U)
int main(){
	uint8 key;
	LCD_init();
	Keypad_init();
	while(1){
		key=Keypad_getKey();
		switch(key){
		case ' ':
			LCD_cleanScreen();
			break;
		case 'N':
			break;
		default:
			LCD_displayCharacter(key);
		}
	}

}

