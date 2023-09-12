/******************************************************************************
 * File Name: main.c
 * Description: Test SPI Driver Master
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "Atmega32.h"
#include "SPI.h"
#include "gpio.h"
#include "lcd.h"
#include <util/delay.h>

uint8 send=0;
uint8 receive=0;
uint8 Counter=0;

//#define MCU_AS_MASTER
#define MCU_AS_SLAVE

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
#endif
	MCAL_SPI_init(&SPI_Config);
	MCAL_SPI_GPIO_SET_PINS();
	LCD_init();
#ifdef MCU_AS_MASTER
	LCD_displayString("Master:");
#endif

#ifdef MCU_AS_SLAVE
	LCD_displayString("Slave:");
#endif
	LCD_goToSpecficPosition(0, 9);
	LCD_displayNumber(Counter);
	while(1){

#ifdef MCU_AS_SLAVE
		for(send= 1;send<27 ;send++){
			receive = MCAL_SPI_sendReceiveData(send);
			LCD_goToSpecficPosition(0, 9);
			LCD_displayNumber(++Counter);
			LCD_goToSpecficPosition(1, 0);
			LCD_displayCharacter(receive);
		}
#endif

#ifdef MCU_AS_MASTER
		for(send= 'A';send<= 'Z';send++){
			MCAL_GPIO_writePin(GPIO_PORTB, GPIO_PIN_4, PIN_LOW);
			receive = MCAL_SPI_sendReceiveData(send);
			MCAL_GPIO_writePin(GPIO_PORTB, GPIO_PIN_4, PIN_HIGH);
			LCD_goToSpecficPosition(0, 9);
			LCD_displayNumber(++Counter);
			LCD_goToSpecficPosition(1, 0);
			LCD_displayNumber(receive);
			_delay_ms(1000);
		}
		LCD_goToSpecficPosition(1, 0);
		LCD_displayString("   ");
#endif
	}
}
