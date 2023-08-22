/*
 * main.c
 *
 *  Created on: ???/???/????
 *      Author: Ehab Mohamed
 */

#include "Register.h"
#include <avr/interrupt.h>
#include <util/delay.h>
#include "external_interrupt.h"



void LEDs_init(){
	//PortD pin5,pin6,pin7 >> output pins
	DDRD|=(1<<5)|(1<<6)|(1<<7);
	//Initialize pin5,6,7 by zero
	PORTD&=~(1<<5)&(~(1<<6))&~((1<<7));
}

void Buttons_init(){
	//PortD pin2 >> input pin
	DDRD&=~(1<<2);
	//PortD pin2 >> input pin
	DDRD&=~(1<<3);
	//PortB pin2 >> input pin
	DDRB&=~(1<<2);
}

void INT0_Task(){
	//turn on Led 0 for 1 SEC
	PORTD|=(1<<5);
	_delay_ms(1000);
}

void INT1_Task(){
	//turn on Led 1 for 1 SEC
	PORTD|=(1<<6);
	_delay_ms(1000);
}
void INT2_Task(){
	//turn on Led 2 for 1 SEC
	PORTD|=(1<<7);
	_delay_ms(1000);
}
int main(){
	LEDs_init();
	Buttons_init();
	EINTx_init(EINT0,BOTH_EDGES);
	EINTx_init(EINT1,RISING_EDGE);
	EINTx_init(EINT2,FAILIGN_EDGE);
	EINTx_setCallBackFunc(EINT0,INT0_Task);
	EINTx_setCallBackFunc(EINT1,INT1_Task);
	EINTx_setCallBackFunc(EINT2,INT2_Task);
	EINTx_enable(EINT0);
	EINTx_enable(EINT1);
	EINTx_enable(EINT2);
	SREG|=(1<<7);
	while(1){
		//Turn Off three LEDs
		PORTD&=~(1<<5)&(~(1<<6))&~((1<<7));
	}
}
