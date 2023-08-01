/******************************************************************************
 * File Name: main.c
 * Description: Application for using LIFO data structure
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "Platform_Types.h"
#include "lifo.h"
#include <stdio.h>

#define BUFFER_1_SIZE	5
#define BUFFER_2_SIZE	5

uint32 buffer1[BUFFER_1_SIZE];

/* Main Function */
int main(void){
	uint32 data=0;
	LIFO_Buf_t UART_buf;
	LIFO_Buf_t SPI_buf;
	uint32* buffer2=(uint32*)malloc(BUFFER_2_SIZE*sizeof(uint32));
	LIFO_init(&UART_buf, buffer1,  BUFFER_1_SIZE);
	LIFO_init(&SPI_buf , buffer2,  BUFFER_2_SIZE);
	uint32 i;
	for(i=0;i<BUFFER_1_SIZE;i++){
		if((LIFO_push(&UART_buf, i)) == LIFO_NO_ERROR){
			printf("UART_LIFO_Buffer Push : %lu\n",i);
		}
	}
	for(i=0;i<BUFFER_1_SIZE;i++){
		if((LIFO_pop(&UART_buf,&data)) == LIFO_NO_ERROR){
			printf("UART_LIOF_Buffer pop  : %ld\n",data);
		}
	}

	return 0;
}
