/*
 * Atmega32_interrupt.h
 *
 *  Created on: ???/???/????
 *      Author: Ehab Mohamed
 */


#ifndef _VECTOR
#define _VECTOR(N) __vector_ ## N
#endif

/* Interrupt vectors */
/* Vector 0 is the reset vector. */
/* External Interrupt Request 0 */
#define INT0_vect			_VECTOR(1)
#define SIG_INTERRUPT0			_VECTOR(1)

/* External Interrupt Request 1 */
#define INT1_vect			_VECTOR(2)
#define SIG_INTERRUPT1			_VECTOR(2)

/* Timer/Counter2 Compare Match */
#define TIMER2_COMP_vect		_VECTOR(3)
#define SIG_OUTPUT_COMPARE2		_VECTOR(3)

/* Timer/Counter2 Overflow */
#define TIMER2_OVF_vect			_VECTOR(4)
#define SIG_OVERFLOW2			_VECTOR(4)

/* Timer/Counter1 Capture Event */
#define TIMER1_CAPT_vect		_VECTOR(5)
#define SIG_INPUT_CAPTURE1		_VECTOR(5)

/* Timer/Counter1 Compare Match A */
#define TIMER1_COMPA_vect		_VECTOR(6)
#define SIG_OUTPUT_COMPARE1A		_VECTOR(6)

/* Timer/Counter1 Compare Match B */
#define TIMER1_COMPB_vect		_VECTOR(7)
#define SIG_OUTPUT_COMPARE1B		_VECTOR(7)

/* Timer/Counter1 Overflow */
#define TIMER1_OVF_vect			_VECTOR(8)
#define SIG_OVERFLOW1			_VECTOR(8)

/* Timer/Counter0 Overflow */
#define TIMER0_OVF_vect			_VECTOR(9)
#define SIG_OVERFLOW0			_VECTOR(9)

/* Serial Transfer Complete */
#define SPI_STC_vect			_VECTOR(10)
#define SIG_SPI				_VECTOR(10)

/* USART, Rx Complete */
#define USART_RXC_vect			_VECTOR(11)
#define SIG_USART_RECV			_VECTOR(11)
#define SIG_UART_RECV			_VECTOR(11)

/* USART Data Register Empty */
#define USART_UDRE_vect			_VECTOR(12)
#define SIG_USART_DATA			_VECTOR(12)
#define SIG_UART_DATA			_VECTOR(12)

/* USART, Tx Complete */
#define USART_TXC_vect			_VECTOR(13)
#define SIG_USART_TRANS			_VECTOR(13)
#define SIG_UART_TRANS			_VECTOR(13)

/* ADC Conversion Complete */
#define ADC_vect			_VECTOR(14)
#define SIG_ADC				_VECTOR(14)

/* EEPROM Ready */
#define EE_RDY_vect			_VECTOR(15)
#define SIG_EEPROM_READY		_VECTOR(15)

/* Analog Comparator */
#define ANA_COMP_vect			_VECTOR(16)
#define SIG_COMPARATOR			_VECTOR(16)

/* 2-wire Serial Interface */
#define TWI_vect			_VECTOR(17)
#define SIG_2WIRE_SERIAL		_VECTOR(17)

/* External Interrupt Request 2 */
#define INT2_vect			_VECTOR(18)
#define SIG_INTERRUPT2			_VECTOR(18)

/* Timer/Counter0 Compare Match */
#define TIMER0_COMP_vect		_VECTOR(19)
#define SIG_OUTPUT_COMPARE0		_VECTOR(19)

/* Store Program Memory Ready */
#define SPM_RDY_vect			_VECTOR(20)
#define SIG_SPM_READY			_VECTOR(20)
#define _VECTORS_SIZE 84

#if (__GNUC__ == 4 && __GNUC_MINOR__ >= 1) || (__GNUC__ > 4)
#  define __INTR_ATTRS used, externally_visible
#endif

# define ISR(vector, ...)            \
    void vector (void) __attribute__ ((signal,__INTR_ATTRS)) __VA_ARGS__; \
    void vector (void)

