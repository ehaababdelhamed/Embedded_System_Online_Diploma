/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Ehab Mohamed Abdelhamed
 * @brief          : Unit 7 Lesson 1 GPIO Lab 1
 ******************************************************************************/
#include <GPIO.h>
#include "RCC.h"
#include "USART.h"
#include "SPI.h"
#include "delay.h"
#include "stm32f103x6.h"

#define MCU_AS_MASTER
//#define MCU_AS_SLAVE

uint16 Buffer=0;

void clock_init(){
	//Enable GPIOA Clock
	RCC_GPIOA_CLK_EN();
	//Enable GPIOB Clock
	RCC_GPIOB_CLK_EN();
	RCC_AFIO_CLK_EN();
	//wait to initialize clock
	delay_ms(1);
}

#ifdef MCU_AS_MASTER
/*
 * Run USART1,USART2 by different mechanisms.
Receive From USART1 by interrupt Send by USART2 by Pooling*/
void USART1_CallBack(){
	Buffer = MCAL_USART_receiveData(USART1_ID, USART_POOLING_DISABLE);
	MCAL_USART_sendData(USART1_ID, Buffer, USART_POOLING_ENABLE);
	MCAL_GPIO_writePin(GPIO_PORTA, GPIO_PIN_4, PIN_LOW);
	MCAL_SPI_TX_RX(SPI1_ID, Buffer, SPI_POLLING_ENABLE);
	MCAL_GPIO_writePin(GPIO_PORTA, GPIO_PIN_4, PIN_HIGH);

}
#endif

#ifdef MCU_AS_SLAVE

void Ehab_SPI_CALL_BACK(){
	Buffer= MCAL_SPI_TX_RX(SPI1_ID, 0, SPI_POLLING_DISABLE);
	MCAL_USART_sendData(USART1_ID, Buffer, USART_POOLING_ENABLE);
}

#endif


int main(void)
{
	USART_Config_t USARTConfig={
			USART_MODE_TX_RX,
			USART_BAUDRATE_19200,
			USART_DATE_lENGTH_8_BITS,
			USART_DISAPLE_PARITY,
			USART_STOP_1_BIT,
			USART_HW_FLOW_CTRL_NONE
	};

	SPI_Config_t SPI_CFG={
			SPI_MODE_FULL_DUPLEX,
			SPI_MASTER,
			SPI_PERSCALER_8,
			SPI_DATA_SIZE_8B,
			SPI_DATA_ORDER_MSB_FIRST,
			SPI_CLKP_IDLE_HIGH,
			SPI_CLKPh_SECOND_EDGE,
			SPI_NSS_SW_SET
	};

	clock_init();

	//Initialization USART1
	MCAL_USART_GPIO_SET_PINS(USART1_ID);
	MCAL_USART_init(USART1_ID, &USARTConfig);

#ifdef MCU_AS_MASTER
	//Initialization SPI SS pin
	GPIO_PinConfig_t SSconfig={GPIO_PIN_4,GPIO_OUTPUT_PP,GPIO_SPEED_10_MHZ};
	MCAL_GPIO_init(GPIO_PORTA, &SSconfig);
	MCAL_GPIO_writePin(GPIO_PORTA, GPIO_PIN_4, PIN_HIGH);
	//Enable UART interrupt
	MCAL_USART_setCallBackFunc(USART1_ID, USART_IRQ_ENABLE_RXNE, USART1_CallBack);
#endif

#ifdef MCU_AS_SLAVE
	SPI_CFG.Device_Mode =SPI_SLAVE;
	SPI_CFG.NSS_Mode = SPI_NSS_HW_SLAVE;
#endif

	//Initialization SPI
	MCAL_SPI_init(SPI1_ID, &SPI_CFG);
	MCAL_SPI_GPIO_SET_PINS(SPI1_ID);

#ifdef MCU_AS_SLAVE
	MCAL_SPI_setCallBackFunc(SPI1_ID, SPI_IRQ_Source_RXNE, Ehab_SPI_CALL_BACK);
	MCAL_SPI_enableInterrupt(SPI1_ID, SPI_IRQ_Source_RXNE);
#endif

	/* Loop forever */
	while(1){

	}
}
