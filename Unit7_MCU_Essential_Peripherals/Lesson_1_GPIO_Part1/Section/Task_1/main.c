 /******************************************************************************
 * File Name: main.c
 * Description: Turn On 8 LEDS Sequentially
 * Author: Ehab Mohamed Abdelhamed
 *******************************************************************************/
#include "Atmega32_Registers.h"
#include <util/delay.h>
#include "Utils.h"
#define F_CPU 8000000UL

#define PIN0 0
#define PIN7 7

void GPIO_init(){
	//PORTA >> output pins
	DDRA=0xff;
	//Turn Off all pins
	PORTA =0x00;
}

void LEDS_turnON(){
	sint32 i;
	for(i=0;i<=PIN7;i++){
		SET_BIT(PORTA,i);
		_delay_ms(300);
	}
	_delay_ms(1000);
}

void LEDS_turnOFF(){
	sint32 i;
	for(i=PIN7;i>=PIN0;i--){
		CLEAR_BIT(PORTA,i);
		_delay_ms(300);
	}
	_delay_ms(1000);
}

int main(void){
	/*Initialization*/
	GPIO_init();
	/*Super Loop*/
	while(1){
		//Turn on 8 LEDS Sequentially
		LEDS_turnON();
		//Turn off 8 LEDS Sequentially
		LEDS_turnOFF();
	}

	return 0;
}
