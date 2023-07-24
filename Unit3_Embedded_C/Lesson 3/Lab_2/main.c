/********************************************************************************
 * file           : main.c
 * author         : Ehab Mohamed Abdlehamed
 * brief          : Toggle led using STM32F103C8T6 board
 *******************************************************************************/


#include "Platform_Types.h"

#define RCC_BASE      0x040021000
#define PortA_BASE    0x040010800

#define RCC_APB2ENR   *(volatile uint32*)(RCC_BASE+0x18)   //to enable clock of GPIO module 
#define GPIOA_CRH     *(volatile uint32*)(PortA_BASE+0x04) //to select mode of pins of port A
#define GPIOA_ODR     *(volatile uint32*)(PortA_BASE+0x0C) //Data register for port A

typedef union{
	volatile uint32 all_port;
	struct{
		volatile uint32 rserved:13;
		volatile uint32 pin13:1;
	}pins;
}ODR_t;

volatile ODR_t * PortA=(volatile ODR_t *)(PortA_BASE+0x0C); 

int main(void)
{
	static uint32 bss_var[3];
	uint32 i;
	/*Enable clock for gpio port A*/
	RCC_APB2ENR|=(1<<2);
	/*to select modo for pin 13 at port A as output pin*/
	GPIOA_CRH=(GPIOA_CRH&(0xff0fffff))|(0x00200000);
	/* Super loop */
	for(;;){
		/*Write 1 to turn on Led*/
		PortA->pins.pin13 = 1;
		/*delay*/
		for(i=0;i<5000;i++);
		/*Write 0 to turn off Led*/
		PortA->pins.pin13 = 0;
		for(i=0;i<5000;i++);
	}
	return 0;
}
