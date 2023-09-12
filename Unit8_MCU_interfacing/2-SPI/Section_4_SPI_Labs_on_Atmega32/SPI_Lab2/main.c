/******************************************************************************
 * File Name: main.c
 * Description: Test SPI Driver Master/Slave Lab
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "Atmega32.h"
#include "SPI.h"
#include "gpio.h"
#include "util/delay.h"

#define DECODE_MODE 					(0x09)
#define DECODE_MODE_decode_7dig 		(0xff)

#define Intensity 						(0x0A)

#define SCAN_LIMIT						(0X0B)
#define SCAN_LIMIT_Displaydigits_0_7	(0x07)


#define SHOUTDOWN			(0X0C)
#define SHOUTDOWN_TurnOff	(0x00)
#define SHOUTDOWN_TurnON	(0x01)

uint8 Digit=0;
uint8 count=0;


void MAX7221_Send(uint8 Command,uint8 Data){
	MCAL_GPIO_writePin(GPIO_PORTB, GPIO_PIN_4, PIN_LOW);
	MCAL_SPI_sendData(Command);
	MCAL_SPI_sendData(Data);
	MCAL_GPIO_writePin(GPIO_PORTB, GPIO_PIN_4, PIN_HIGH);
}


void MAX7221_init(){
	SPI_Config_t SPI_Config={
			SPI_MASTER,
			SPI_PERSCALER_16,
			SPI_DATA_ORDER_MSB_FIRST,
			SPI_CLKP_IDLE_LOW,
			SPI_CLKPh_FIRST_EDGE,
			SPI_POLLING
	};
	MCAL_SPI_init(&SPI_Config);
	MCAL_SPI_GPIO_SET_PINS();
	MAX7221_Send(DECODE_MODE,DECODE_MODE_decode_7dig);
	MAX7221_Send(SCAN_LIMIT,SCAN_LIMIT_Displaydigits_0_7);
	MAX7221_Send(Intensity,0x0f);
	MAX7221_Send(SHOUTDOWN,SHOUTDOWN_TurnON);
}


int main(){
	MAX7221_init();
	while(1){
		for(Digit=1;Digit<9;Digit++){
			MAX7221_Send(Digit,count);
			count++;
		}
		_delay_ms(2000);
	}
}
