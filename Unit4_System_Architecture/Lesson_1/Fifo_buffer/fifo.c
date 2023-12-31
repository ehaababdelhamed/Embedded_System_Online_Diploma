/******************************************************************************
 * Module: FIFO
 * File Name: fifo.c
 * Description: Source file for FIFO Data structure
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "fifo.h"
#include <stdio.h>

/*******************************************************************************
 *                      Function Definition                                    *
 *******************************************************************************/

/************************************************************************************
 * Function Name: FIFO_init
 * Parameters (in):	FIFO_Buf_t - Pointer to FIFO buffer
 * 					buffer - pointer to data buffer
 * 					len - Length of data buffer
 * Return value: status of FIFO buffer
 * Description: Function to initialize FIFO buffer
 ************************************************************************************/
FIFO_Status FIFO_init(FIFO_Buf_t* fifo_buf,ELEMENT_TYPE *buffer,uint32 len){
	FIFO_Status status;
	if(buffer==NULL){
		status=FIFO_NULL;
	}else{
		fifo_buf->base=buffer;
		fifo_buf->head=buffer;
		fifo_buf->tail=buffer;
		fifo_buf->length=len;
		fifo_buf->count=0;
		status=FIFO_NO_ERROR;
	}
	return status;
}
/************************************************************************************
 * Function Name: FIFO_enqueue
 * Parameters (in):	fifo_buf - Pointer to FIFO buffer
 * 					data - data that will added to buffer
 * Return value: status of FIFO buffer
 * Description: Function to add item in FIFO buffer.
 ************************************************************************************/
FIFO_Status FIFO_enqueue(FIFO_Buf_t* fifo_buf,ELEMENT_TYPE data){
	FIFO_Status status;
	//check if FIFO valid
	if(fifo_buf->base == NULL ||fifo_buf->head == NULL||fifo_buf->tail == NULL){
		status=FIFO_NULL;
		//Check if FIFO is full
	}else if(FIFO_is_full(fifo_buf) == FIFO_FULL){
		status=FIFO_FULL;
	}else{
		//Write data in FIFO buffer
		*(fifo_buf->head) = data;
		fifo_buf->count++;
		//FIFO circular
		if((fifo_buf->head)>(fifo_buf->base+fifo_buf->length)){
			fifo_buf->head=fifo_buf->base;
		}else{
			fifo_buf->head++;
		}
		status=FIFO_NO_ERROR;
	}
	return status;
}

/************************************************************************************
 * Function Name: FIFO_dequeue
 * Parameters (in): fifo_buf - Pointer to FIFO buffer
 * 					data - pointer to variable that will save the data
 * Return value: status of FIFO buffer
 * Description: Function to get item form FIFO buffer.
 ************************************************************************************/
FIFO_Status FIFO_dequeue(FIFO_Buf_t* fifo_buf,ELEMENT_TYPE *data){
	FIFO_Status status;
	//Check LIFO is valid
	if(fifo_buf->base == NULL ||fifo_buf->head == NULL||fifo_buf->tail == NULL){
		status=FIFO_NULL;
		//Check if FIFO is full
	}else if(fifo_buf->count == 0){
		status=FIFO_EMPTY;
	}else{
		//Read data from FIFO buffer
		*data=*(fifo_buf->tail);
		fifo_buf->count--;
		//FIFO circular
		if((fifo_buf->tail)== (fifo_buf->base+fifo_buf->length)){
			fifo_buf->tail=fifo_buf->base;
		}else{
			fifo_buf->tail++;
		}
		status=FIFO_NO_ERROR;
	}
	return status;
}

/************************************************************************************
 * Function Name: FIFO_is_full
 * Parameters (in): fifo_buf - Pointer to FIFO buffer
 * Return value: status of FIFO buffer
 * Description: Function to check if FIFO is full.
 ************************************************************************************/
FIFO_Status FIFO_is_full(const FIFO_Buf_t* fifo_buf){
	FIFO_Status status;
	//Check LIFO is valid
	if(fifo_buf->base == NULL ||fifo_buf->head == NULL||fifo_buf->tail == NULL){
		status=FIFO_NULL;
		//Check if FIFO is full
	}else if(fifo_buf->count >= fifo_buf->length){
		status=FIFO_FULL;
	}else{
		status=FIFO_NO_ERROR;
	}
	return status;
}

/************************************************************************************
 * Function Name: FIFO_print
 * Parameters (in): fifo_buf - Pointer to FIFO buffer
 * Return value: None
 * Description: Function to print all data buffer.
 ************************************************************************************/
FIFO_Status FIFO_print(const FIFO_Buf_t* fifo_buf){
	FIFO_Status status;
	ELEMENT_TYPE *Ptemp;
	uint32 i;
	//Check LIFO is valid
	if(fifo_buf->base == NULL ||fifo_buf->head == NULL||fifo_buf->tail == NULL){
		status=FIFO_NULL;
	}else{
		//Make Ptemp pointer refer to the first element in FIFO buffer
		Ptemp=fifo_buf->tail;
		//Loop to print all elements
		printf("\n======== FIFO print ========\n");
		for(i=0;i<fifo_buf->count;i++){
			printf("\t %x \n",*Ptemp);
			Ptemp++;
		}
		printf("============================\n");
	}
	return status;
}

