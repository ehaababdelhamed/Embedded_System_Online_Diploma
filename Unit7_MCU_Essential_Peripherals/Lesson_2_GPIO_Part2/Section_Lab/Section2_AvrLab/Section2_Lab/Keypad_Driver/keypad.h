/*
 * keypad.h
 *
 *  Created on: ???/???/????
 *      Author: Ehab Mohamed
 */

#ifndef KEYPAD_H_
#define KEYPAD_H_

#include "../Platform_Types.h"


#define NUMOFCOL 	(4U)
#define NUMOFROW	(4U)

#define KEYPAD_DIR	DDRC
#define KEYPAD_PORT	PORTC
#define KEYPAD_PIN	PINC


void Keypad_init();
uint8 Keypad_getKey();



#endif /* KEYPAD_H_ */
