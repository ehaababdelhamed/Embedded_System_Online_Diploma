/*
 * keypad.c
 *
 *  Created on: ???/???/????
 *      Author: Ehab Mohamed
 */


#include "keypad.h"

#include "../Atmega32.h"
#include "../Utils.h"

uint8 keys[NUMOFROW][NUMOFCOL]={
		{'7','8','9','/'},
		{'4','5','6','X'},
		{'1','2','3','-'},
		{' ','0','=','+'}
};
void Keypad_init(){
	KEYPAD_DIR = 0xf0;
	KEYPAD_PORT = 0x0f;
}

uint8 Keypad_getKey(){
	uint8 row,col;
	for(col =0;col<NUMOFCOL;col++){
		KEYPAD_PORT |= 0xf0;
		KEYPAD_PORT &= ~(1<<(col+4));
		for(row =0 ;row<NUMOFROW;row++){
			if(!(KEYPAD_PIN & (1<<row))){
				while(!(KEYPAD_PIN & (1<<row)));
				return keys[row][col];
			}
		}
	}
	return 'N';
}
