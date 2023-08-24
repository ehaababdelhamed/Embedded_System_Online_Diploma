/******************************************************************************
 * File Name: main.c
 * Description: Different Tasks at Atmega32 AMIT kit
 * Author: Ehab Mohamed Abdelhamed
 *******************************************************************************/
#include "Atmega32_Registers.h"
#include <util/delay.h>
#include "Utils.h"
#define F_CPU 8000000UL


void GPIO_init(){
	//PORTC Pins[2-7] >> output pins
	DDRC|=0xfc;
	//Turn Off pins[2-7] PORTC
	PORTC &=0x03;
	//PORTD Pins[0-3] >> input floating
	//PORTD Pins[4-7] >> output pins
	DDRD=0xf0;
	//Turn Off pins[4-7] PORTD
	PORTD &=0x0f;
}

#define UP 0
#define DOWN 1

void task1(){
	/*Turn on 3 LEDs Sequentially*/
	static sint8 count=5;
	static sint8 upDownFlag=UP;
	switch (upDownFlag){
	case UP:
		SET_BIT(PORTD,count);
		count++;
		if(count>7){
			upDownFlag=DOWN;
		}
		break;
	case DOWN:
		count--;
		CLEAR_BIT(PORTD,count);
		if(count == 5){
			upDownFlag=UP;
		}
		break;
	}
}

void task2(){
	//Turn On Buzzer for 1 SEC
	SET_BIT(PORTD,4);
	_delay_ms(1000);
	CLEAR_BIT(PORTD,4);
}



int main(void){
	/*Initialization*/
	GPIO_init();
	/*Super Loop*/
	while(1){
		if(READ_BIT(PIND,0) == TRUE){
			task1();
		}else if(READ_BIT(PIND,1)== TRUE){
			task2();
		}
		_delay_ms(250);
	}
	return 0;
}


