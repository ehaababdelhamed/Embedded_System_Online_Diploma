/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Auto-generated by STM32CubeIDE
 * @brief          : Main program body
 ******************************************************************************/
#include "Platform_Types.h"


typedef union{
	uint32 Port;
	struct{
		uint32 pin0:1;
		uint32 pin1:1;
		uint32 pin2:1;
		uint32 pin3:1;
		uint32 pin4:1;
		uint32 pin5:1;
		uint32 pin6:1;
		uint32 pin7:1;
		uint32 pin8:1;
		uint32 pin9:1;
		uint32 pin10:1;
		uint32 pin11:1;
		uint32 pin12:1;
		uint32 pin13:1;
	}Pins;
}GPIOx;

#define GPIOA_BASE 		(0x40010800)
#define GPIOA_CRH 		(*(volatile uint32*)(GPIOA_BASE + 0x04)) //GPIOA_Mode_Reg
#define GPIOA_ODR 		((volatile GPIOx*)(GPIOA_BASE + 0x0c))	 //GPIOA_Data_Reg

#define RCC_BASE 		(0x40021000)
#define RCC_APB2ENR 	(*(volatile uint32*)(RCC_BASE + 0x18)) //APB2 Enable Clock Register


int main(void)
{
	uint32 i;
	//Enable PortA clock by set bit 2 in RCC_APB2ENR
	RCC_APB2ENR|=(1<<2);
	//GPIOA_init
	GPIOA_CRH &= 0xff0fffff;
	GPIOA_CRH |= 0x00200000;
    /* Loop forever */
	for(;;){
		GPIOA_ODR->Pins.pin13=1;
		for(i=0;i<5000;i++);
		GPIOA_ODR->Pins.pin13=0;
		for(i=0;i<5000;i++);
	}
}
