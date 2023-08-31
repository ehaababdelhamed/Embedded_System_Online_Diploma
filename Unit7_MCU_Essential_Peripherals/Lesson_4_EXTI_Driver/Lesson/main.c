/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Ehab Mohamed Abdelhamed
 * @brief          : Unit 7 Lesson 1 GPIO Lab 1
 ******************************************************************************/
#include "gpio.h"
#include "lcd.h"
#include "stm32f103x6.h"
#include "EXTI.h"
#include "delay.h"


void clock_init(){
	//Enable GPIOA Clock
	RCC_GPIOA_CLK_EN();
	//Enable GPIOB Clock
	RCC_GPIOB_CLK_EN();
	RCC_AFIO_CLK_EN();
	//wait to initialize clock
	delay_ms(1);
}

void EXTI9_callBack(){
	LCD_displayString("IRQ EXTI9 is");
	LCD_goToSpecficPosition(1,0);
	LCD_displayString("happened _|-");
	delay_ms(1000);
	LCD_cleanScreen();
}
int main(void)
{
	EXTI_Config_t EXTIConfig = {EXTI9PB9 ,RAISING};
	clock_init();
	LCD_init();
	MCAL_EXTI_init(&EXTIConfig);
	MCAL_EXTI_setCallBackFun(EXTI9,EXTI9_callBack);
	MCAL_EXTI_enable(EXTI9);
	/* Loop forever */
	while(1){

	}
}
