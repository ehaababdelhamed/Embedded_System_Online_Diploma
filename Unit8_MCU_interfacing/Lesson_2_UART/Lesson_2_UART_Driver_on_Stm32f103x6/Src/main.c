/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Ehab Mohamed Abdelhamed
 * @brief          : Unit 7 Lesson 1 GPIO Lab 1
 ******************************************************************************/
#include <GPIO.h>
#include "RCC.h"
#include "USART.h"
#include "delay.h"
#include "stm32f103x6.h"

uint16 Buffer;
void clock_init(){
	//Enable GPIOA Clock
	RCC_GPIOA_CLK_EN();
	//Enable GPIOB Clock
	RCC_GPIOB_CLK_EN();
	RCC_AFIO_CLK_EN();
	//wait to initialize clock
	delay_ms(1);
}

void USART1_CallBack(){
	Buffer = MCAL_USART_receiveData(USART1_ID, POOLING_DISABLE);
	MCAL_USART_sendData(USART2_ID, Buffer, POOLING_ENABLE);
}
int main(void)
{
	USART_Config_t USARTConfig={
			USART_MODE_TX_RX,
			USART_BAUDRATE_9600,
			USART_DATE_lENGTH_8_BITS,
			USART_DISAPLE_PARITY,
			USART_STOP_1_BIT,
			USART_HW_FLOW_CTRL_NONE
	};
	clock_init();
	//USART1 >> Interrupt mechanism
	MCAL_USART_GPIO_SET_PINS(USART1_ID);
	MCAL_USART_setCallBackFunc(USART1_ID, USART_IRQ_ENABLE_RXNE, USART1_CallBack);
	MCAL_USART_init(USART1_ID, &USARTConfig);

	//USART2 >> Pooling mechanism
	MCAL_USART_GPIO_SET_PINS(USART2_ID);
	MCAL_USART_init(USART2_ID, &USARTConfig);
	/* Loop forever */
	while(1){
	}
}
