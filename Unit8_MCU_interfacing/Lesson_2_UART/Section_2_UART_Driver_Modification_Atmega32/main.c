/******************************************************************************
 * File Name: main.c
 * Description: Test UART Driver interrupt techniques
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include <USART.h>
#include "Atmega32.h"
#include "lcd.h"
#include <util/delay.h>
uint8 pos=0;
uint16 data=0;

void USART_callBack(){
	data = MCAL_USART_receiveData(POOLING_DISABLE);
	LCD_goToSpecficPosition(0, pos++);
	LCD_displayCharacter(data);
}

int main(){
	Global_Interrupt_Enable();
	USART_Config_t USART_Config = {
			USART_MODE_TX_RX,
			BAUDRATE_9600,
			DATE_8B,
			PARITY_DISABLE,
			STOP_1B
	};
	MCAL_USART_init(&USART_Config);
	MCAL_USART_setCallBackFun(USART_IRQ_ENABLE_RXC, USART_callBack);
	MCAL_USART_EnableInterrupt(USART_IRQ_ENABLE_RXC);
	LCD_init();
	LCD_goToSpecficPosition(1, 0);
	LCD_displayString("Counter: ");
	uint32 count=0;
	while(1){
		LCD_goToSpecficPosition(1, 8);
		LCD_displayNumber(count);
		count++;
		_delay_ms(1000);
	}
}
