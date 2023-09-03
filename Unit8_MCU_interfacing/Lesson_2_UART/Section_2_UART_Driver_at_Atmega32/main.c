/******************************************************************************
 * File Name: main.c
 * Description: Test UART Driver by send string form terminal and display it on LCD
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "UART.h"
#include "lcd.h"

int main(){
	UART_Config_t UART_Config = {BAUDRATE_9600,DATE_8_BIT,DISAPLE_PARITY,STOP_1_BIT};
	MCAL_UART_init(&UART_Config);
	LCD_init();
	char data[100];
	while(1){
		MCAL_UART_receiveString(data);
		LCD_displayString(data);
	}

}
