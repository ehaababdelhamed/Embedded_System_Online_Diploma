/******************************************************************************
 * File Name: main.c
 * Description: Application for using FIFO data structure
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "Platform_Types.h"
#include <stdio.h>
#include <string.h>
#include "fifo.h"

#define BUFFER_1_SIZE	5

ELEMENT_TYPE buffer1[BUFFER_1_SIZE];

/* Main Function */
int main(void){
	ELEMENT_TYPE data=0;
	FIFO_Buf_t UART_buf;
	FIFO_init(&UART_buf, buffer1,  BUFFER_1_SIZE);
	uint32 i;
	for(i=0;i<8;i++){
		printf("FIFO Enqueue (%lx)\n",i);
		if(FIFO_enqueue(&UART_buf, i)== FIFO_NO_ERROR){
			printf("\tFIFO Enqueue (%lx) ---- Done\n",i);
		}else{
			printf("\tFIFO Enqueue (%lx) ---- Failed\n",i);
		}
	}
	FIFO_print(&UART_buf);
	if(FIFO_dequeue(&UART_buf,&data)== FIFO_NO_ERROR){
		printf("\tFIFO dequeue (%x) ---- Done\n",data);
	}else{
		printf("\tFIFO dequeue (%x) ---- Failed\n",data);
	}
	if(FIFO_dequeue(&UART_buf,&data)== FIFO_NO_ERROR){
		printf("\tFIFO dequeue (%x) ---- Done\n",data);
	}else{
		printf("\tFIFO dequeue (%x) ---- Failed\n",data);
	}
	FIFO_print(&UART_buf);
	for(i=0;i<8;i++){
		printf("FIFO Enqueue (%lx)\n",i);
		if(FIFO_enqueue(&UART_buf, i)== FIFO_NO_ERROR){
			printf("\tFIFO Enqueue (%lx) ---- Done\n",i);
		}else{
			printf("\tFIFO Enqueue (%lx) ---- Failed\n",i);
		}
	}
	FIFO_print(&UART_buf);
	return 0;
}
