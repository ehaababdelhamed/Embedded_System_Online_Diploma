/******************************************************************************
 * Module: LIFO
 * File Name: lifo.c
 * Description: Source file for LIFO Data structure
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "lifo.h"

/*******************************************************************************
 *                      Function Definition                                    *
 *******************************************************************************/

/************************************************************************************
* Function Name: LIFO_pop
* Parameters (in):	lifo_buf - Pointer to LIFO buffer
* 					buffer - pointer to data buffer
* 					len - Length of data buffer
* Return value: status of LIFO buffer
* Description: Function to initialize LIFO buffer
************************************************************************************/
LIFO_Status LIFO_init(LIFO_Buf_t* lifo_buf,uint32 *buffer,uint32 len){
	LIFO_Status status;
	if(buffer==NULL){
		status=LIFO_NULL;
	}else{
		lifo_buf->base=buffer;
		lifo_buf->head=buffer;
		lifo_buf->length=len;
		lifo_buf->count=0;
		status=LIFO_NO_ERROR;
	}
	return status;
}

/************************************************************************************
* Function Name: LIFO_push
* Parameters (in):	lifo_buf - Pointer to LIFO buffer
* 					data - data that will added to buffer
* Return value: status of LIFO buffer
* Description: Function to add item in LIFO buffer.
************************************************************************************/
LIFO_Status LIFO_push(LIFO_Buf_t* lifo_buf,uint32 data){
	LIFO_Status status;
	//Check LIFO is valid
	if(lifo_buf->head == NULL || lifo_buf->base == NULL){
		status=LIFO_NULL;
		//Check LIFO is full
	}else if(lifo_buf->count>=lifo_buf->length){
		status=LIFO_FULL;
	}else{
		//Add new data in LIFO then increment head pointer
		*(lifo_buf->head)=data;
		lifo_buf->head++;;
		lifo_buf->count++;
		status=LIFO_NO_ERROR;
	}
	return status;
}

/************************************************************************************
* Function Name: LIFO_pop
* Parameters (in):	lifo_buf - Pointer to LIFO buffer
* 					data - pointer to variable that will save the data
* Return value: status of LIFO buffer
* Description: Function to get item form LIFO buffer.
************************************************************************************/
LIFO_Status LIFO_pop(LIFO_Buf_t* lifo_buf,uint32 *data){
	LIFO_Status status;
	//Check LIFO is valid
	if(lifo_buf->head == NULL || lifo_buf->base == NULL){
		status=LIFO_NULL;
		//Check LIFO is empty
	}else if(lifo_buf->count == 0 ){
		status=LIFO_EMPTY;
	}else{
		//decrement head pointer then Get data from LIFO buffer
		lifo_buf->head--;
		lifo_buf->count--;
		*data=*(lifo_buf->head);
		status=LIFO_NO_ERROR;
	}
	return status;
}
