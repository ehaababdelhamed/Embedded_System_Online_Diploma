/******************************************************************************
 * File Name: main.c
 * Description: Turn On 8 LEDS Sequentially using switch
 * Author: Ehab Mohamed Abdelhamed
 *******************************************************************************/
#include "Atmega32_Registers.h"
#include <util/delay.h>
#include "Utils.h"
#define F_CPU 8000000UL

#define PIN0 	(0U)
#define PIN7 	(7U)

#define ON 		(1U)
#define OFF		(0U)

void GPIO_init(){
	//PORTA >> output pins
	DDRA=0xff;
	//Turn Off all pins
	PORTA =0x00;
	//PC0 >> input pins
	CLEAR_BIT(DDRC,PIN0);
	//PC0 >> Enable pull up resistor
	SET_BIT(PORTC,PIN0);
}

int main(void){
	/*Initialization*/
	uint8 turnOnCount=PIN0;
	sint8 turnOffCount=PIN7;
	sint8 singlePressFlag=TRUE;
	GPIO_init();
	/*Super Loop*/
	while(1){
		if(READ_BIT(PINC,PIN0) == OFF){ //Check Active Low switch
			_delay_ms(10);				//for denouncing
			if(READ_BIT(PINC,PIN0) == OFF){
				if(singlePressFlag == TRUE){ //For single press switch
					singlePressFlag = FALSE;
					//Turn On 8 LEDs Sequentially every each press
					//Turn on LEDs From LED 0 to LED 7
					if(turnOnCount <= PIN7 ){
						SET_BIT(PORTA,turnOnCount);
						turnOnCount++;
					}else{
						//Turn Off 8 LEDs Sequentially every each press
						//Turn off LEDs From LED 7 to LED 0
						CLEAR_BIT(PORTA,turnOffCount);
						turnOffCount--;
						if(turnOffCount < 0){
							turnOnCount=PIN0;
							turnOffCount=PIN7;
						}
					}

				}
				_delay_ms(100);
			}
		}else{
			singlePressFlag = TRUE;
		}
	}
	return 0;
}


