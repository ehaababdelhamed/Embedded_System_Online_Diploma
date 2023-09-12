/******************************************************************************
 * File Name: main.c
 * Description: Test SPI Driver Master
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "Atmega32.h"
#include "SPI.h"
#include "gpio.h"
#include <util/delay.h>

uint8 send=0xff;
uint8 receive=0;

//#define MCU_AS_MASTER
#define MCU_AS_SLAVE

void SPI_CallBack(){
	receive = MCAL_SPI_receiveData();
	MCAL_SPI_sendData(--send);
	MCAL_GPIO_writePort(GPIO_PORTA, receive);
}

int main(){
	SPI_Config_t SPI_Config={
			SPI_MASTER,
			SPI_PERSCALER_8,
			SPI_DATA_ORDER_MSB_FIRST,
			SPI_CLKP_IDLE_LOW,
			SPI_CLKPh_SECOND_EDGE,
			SPI_POLLING
	};

	//Configure PORTA as output for 7 segment
	GPIO_PinConfig_t PinConfig = {GPIO_PIN_0,GPIO_OUTPUT_PP};
	for(int i=0;i<=7;i++){
		PinConfig.Pin_Num = i;
		MCAL_GPIO_init(GPIO_PORTA, &PinConfig);
	}

#ifdef MCU_AS_SLAVE
	//Run Slave SPI by  interrupt mechanism
	SPI_Config.Device_Mode = SPI_SLAVE;
	SPI_Config.Mechanism = SPI_Interrupt;
	MCAL_SPI_setCallBackFunc(SPI_CallBack);
	Global_Interrupt_Enable();
#endif

	MCAL_SPI_init(&SPI_Config);
	MCAL_SPI_GPIO_SET_PINS();

#ifdef MCU_AS_SLAVE
	MCAL_SPI_sendData(send);
#endif

	while(1){
#ifdef MCU_AS_MASTER
		//Run Master SPI by  polling mechanism
		for(send =0 ;send <= 99 ; send++){
			_delay_ms(1000);
			MCAL_GPIO_writePin(GPIO_PORTB, GPIO_PIN_4, PIN_LOW);
			receive = MCAL_SPI_sendReceiveData(send);
			MCAL_GPIO_writePin(GPIO_PORTB, GPIO_PIN_4, PIN_HIGH);
			MCAL_GPIO_writePort(GPIO_PORTA, receive);
		}
#endif
	}
}
