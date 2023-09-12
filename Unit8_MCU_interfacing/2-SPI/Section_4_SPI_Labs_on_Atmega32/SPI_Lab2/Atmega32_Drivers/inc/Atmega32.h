/******************************************************************************
 * File Name: Atmega32_Registers
 * Description: Header file for Atmega32 Registers map
 * Author: Ehab Mohamed Abdelhamed
 *******************************************************************************/

#ifndef ATMEGA32_H_
#define ATMEGA32_H_

#include "Platform_Types.h"

#define F_CPU (8000000U)


//Status Register
#define SRGE 	(*(volatile uint8*)(0X5F))
#define Global_Interrupt_Enable()	(SRGE |= (1<<7))
#define Global_Interrupt_Disable()	(SRGE &= ~(1<<7))


//GPIO Registers
#define PORTD 	((volatile uint8*)(0X32))
#define DDRD 	((volatile uint8*)(0X31))
#define PIND 	((volatile uint8*)(0X30))

#define PORTC 	((volatile uint8*)(0X35))
#define DDRC 	((volatile uint8*)(0X34))
#define PINC 	((volatile uint8*)(0X33))

#define PORTB 	((volatile uint8*)(0X38))
#define DDRB 	((volatile uint8*)(0X37))
#define PINB 	((volatile uint8*)(0X36))

#define PORTA 	((volatile uint8*)(0X3B))
#define DDRA 	((volatile uint8*)(0X3A))
#define PINA 	((volatile uint8*)(0X39))

//External interrupt Register
#define MCUCR  	(*(volatile uint8*)(0X55))
#define MCUCSR 	(*(volatile uint8*)(0X54))
#define GICR  	(*(volatile uint8*)(0X5B))
#define GIFR 	(*(volatile uint8*)(0X5A))

//=============================================================
//UART Registers
/*UART bitfields*/
typedef union{
	volatile uint8 ALL_REG;
	struct{
		volatile uint8 MPCM :1;
		volatile uint8 U2X :1;
		volatile uint8 PE :1;
		volatile uint8 DOR :1;
		volatile uint8 FE :1;
		volatile uint8 UDRE :1;
		volatile uint8 TXC :1;
		volatile uint8 RXC :1;
	}bit;
}UART_UCSRA_REG_t;

typedef union{
	volatile uint8 ALL_REG;
	struct{
		volatile uint8 TXB8 :1;
		volatile uint8 RXB8 :1;
		volatile uint8 UCSZ2 :1;
		volatile uint8 TXEN_RXEN :2;
		volatile uint8 UDRIE :1;
		volatile uint8 TXCIE:1;
		volatile uint8 RXCIE:1;

	}bit;
}UART_UCSRB_REG_t;

typedef union{
	volatile uint8 ALL_REG;
	struct{
		volatile uint8 UCPOL :1;
		volatile uint8 UCSZ :2;
		volatile uint8 USBS :1;
		volatile uint8 UPM 	:2;
		volatile uint8 UMSEL :1;
		volatile uint8 URSEL :1;
	}bit;
}UART_UCSRC_REG_t;



typedef union{
	volatile uint8 ALL_REG;
	struct{
		volatile uint8 UBRR :4;
		volatile uint8 RESREVED :3;
		volatile uint8 URSEL :1;
	}bit;
}UART_UBRRH_REG_t;

/*UART Registers*/
#define UDR 	(*(volatile uint8*)(0X2C))
#define UBRRL 	(*(volatile uint8*)(0X29))
#define UCSRA 	((volatile UART_UCSRA_REG_t*)(0X2B))
#define UCSRB 	((volatile UART_UCSRB_REG_t*)(0X2A))
#define UCSRC 	((volatile UART_UCSRC_REG_t*)(0X40))
#define UBRRH 	((volatile UART_UBRRH_REG_t*)(0X40))


//=============================================================
//SPI Registers
/*============ SPI bit fields ===============*/
typedef union{
	volatile uint8 ALL_REG;
	struct{
		volatile uint8 SPR 	:2;
		volatile uint8 CPHA :1;
		volatile uint8 CPOL :1;
		volatile uint8 MSTR :1;
		volatile uint8 DORD :1;
		volatile uint8 SPE 	:1;
		volatile uint8 SPIE :1;
	}bit;
}REG_SPCR_SPI;

typedef union{
	volatile uint8 ALL_REG;
	struct{
		volatile uint8 SPI2X :1;
		volatile uint8 RES 	:5;
		volatile uint8 WCOL :1;
		volatile uint8 SPIF :1;
	}bit;
 }REG_SPSR_SPI;
/*============ SPI Registers ===============*/
#define SPCR 	((volatile REG_SPCR_SPI*)(0X2D))
#define SPSR 	((volatile REG_SPSR_SPI*)(0X2E))
#define SPDR 	(*((volatile uint8*)(0X2F)))


#endif /* ATMEGA32_H_ */
