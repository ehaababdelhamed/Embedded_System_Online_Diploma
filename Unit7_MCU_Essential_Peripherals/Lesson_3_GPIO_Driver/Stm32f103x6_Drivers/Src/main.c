/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Ehab Mohamed Abdelhamed
 * @brief          : Unit 7 Lesson 1 GPIO Lab 1
 ******************************************************************************/
#include "gpio.h"
#include "stm32f103x6.h"


void delay(uint32 count){
	uint32 i,j;
	for(i=0;i<count;i++){
		for(j=0;j<100;j++);
	}
}


void clock_init(){
	//Enable GPIOA Clock
	RCC_GPIOA_CLK_EN();
	//Enable GPIOB Clock
	RCC_GPIOB_CLK_EN();
	//wait to initialize clock
	delay(1);
}

void GPIO_init(){
	//PA1 >> input floating
	//PA13 >> input floating
	//PB1 >> Output push pull
	//PB13 >> Output push pull
	GPIO_PinConfig_t pinConfig1 = {GPIO_PIN_1,GPIO_INUPUT_FLOATING,GPIO_SPEED_INPUT};
	GPIO_PinConfig_t pinConfig2 = {GPIO_PIN_13,GPIO_INUPUT_FLOATING,GPIO_SPEED_INPUT};
	GPIO_PinConfig_t pinConfig3 = {GPIO_PIN_1,GPIO_OUTPUT_PP,GPIO_SPEED_2_MHZ};
	GPIO_PinConfig_t pinConfig4 = {GPIO_PIN_13,GPIO_OUTPUT_PP,GPIO_SPEED_2_MHZ};

	MCAL_GPIO_init(GPIO_PORTA, &pinConfig1);
	MCAL_GPIO_init(GPIO_PORTA, &pinConfig2);
	MCAL_GPIO_init(GPIO_PORTB, &pinConfig3);
	MCAL_GPIO_init(GPIO_PORTB, &pinConfig4);
}

int main(void)
{
	clock_init();
	GPIO_init();
	uint32 SinglePressflag=0;
	/* Loop forever */
	while(1){
		//Check single press switch
		if(MCAL_GPIO_readPin(GPIO_PORTA,GPIO_PIN_1) == PIN_LOW){ //Check if switch pressed >> 0
			delay(1); //delay for switch denouncing
			if(MCAL_GPIO_readPin(GPIO_PORTA,GPIO_PIN_1) == PIN_LOW){
				if(SinglePressflag == 0){
					MCAL_GPIO_togglePin(GPIO_PORTB, GPIO_PIN_1);
					SinglePressflag=1; 	//For single press
				}
			}
		}else{
			SinglePressflag=0;
		}
		//Check Multi press switch
		if(MCAL_GPIO_readPin(GPIO_PORTA,GPIO_PIN_13) == PIN_HIGH){ //Check if switch pressed >> 1
			delay(1); //delay for switch denouncing
			if(MCAL_GPIO_readPin(GPIO_PORTA,GPIO_PIN_13) == PIN_HIGH){
				MCAL_GPIO_togglePin(GPIO_PORTB, GPIO_PIN_13);
			}
		}
	}
	delay(10);
}
