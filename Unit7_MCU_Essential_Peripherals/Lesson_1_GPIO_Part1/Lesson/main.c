/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Ehab Mohamed Abdelhamed
 * @brief          : Unit 7 Lesson 1 GPIO Lab 1
 ******************************************************************************/
#include "Register.h"
#include "Platform_Types.h"


#define GPIOACLOCKEN (1<<2)
#define GPIOBCLOCKEN (1<<3)

#define GPIOA1 	(1<<1)
#define GPIOA13 (1<<13)
#define GPIOB1 	(1<<1)
#define GPIOB13 (1<<13)


#define INPUT_ANALOG 		(0x00)
#define INPUT_FLOATING 		(0x4)
#define INPUT_PULL_UP_DOWN 	(0x8)

#define OUTPUT_PUSH_PULL 	(0x2)
#define OUTPUT_OPEN_DRIAN 	(0x6)




void delay(uint32 count){
	uint32 i,j;
	for(i=0;i<count;i++){
		for(j=0;j<100;j++);
	}
}


void clock_init(){
	//Enable GPIOA Clock
	RCC_APB2ENR |=GPIOACLOCKEN;
	//Enable GPIOB Clock
	RCC_APB2ENR |=GPIOBCLOCKEN;
	//wait to initialize clock
	delay(1);
}

void GPIO_init(){
	//PA1 >> input floating
	GPIOA_CRL &= ~(0xf<<4);
	GPIOA_CRL |= (INPUT_FLOATING<<4);
	//PA13 >> input floating
	GPIOA_CRH &= ~(0xf<<20);
	GPIOA_CRH |= (INPUT_FLOATING<<20);
	//PB1 >> Output push pull
	GPIOB_CRL &= ~(0xf<<4);
	GPIOB_CRL |= (OUTPUT_PUSH_PULL<<4);
	//PB13 >> Output push pull
	GPIOB_CRH &= ~(0xf<<22);
	GPIOB_CRH |= (OUTPUT_PUSH_PULL<<20);
}

int main(void)
{
	clock_init();
	GPIO_init();
	uint32 SinglePressflag=0;
	/* Loop forever */
	while(1){
		//Check single press switch
		if(!(GPIOA_IDR & GPIOA1)){ //Check if switch pressed >> 0
			delay(1); //delay for switch denouncing
			if(!(GPIOA_IDR & GPIOA1)){
				if(SinglePressflag == 0){
					GPIOB_ODR ^= GPIOB1 ; 	//Toggle Led at PB1
					SinglePressflag=1; 	//For single press
				}
			}
		}else{
			SinglePressflag=0;
		}

		//Check Multi press switch
		if(GPIOA_IDR & GPIOA13){ //Check if switch pressed >> 1
			delay(1); //delay for switch denouncing
			if(GPIOA_IDR & GPIOA13){
				GPIOB_ODR ^= GPIOB13; 	//Toggle Led at PB13
			}
		}
	}
	delay(10);
}
