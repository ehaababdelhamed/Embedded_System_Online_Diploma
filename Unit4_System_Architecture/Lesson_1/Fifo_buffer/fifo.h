 /******************************************************************************
 * Module: FIFO
 * File Name: fifo.c
 * Description: Header file for FIFO Data structure
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/

#ifndef FIFO_H_
#define FIFO_H_
#include "Platform_Types.h"
/*******************************************************************************
 *                             User Configuration                              *
 *******************************************************************************/
//Select the element type (uint8 - uint16 -uint32 - uint64)
#define ELEMENT_TYPE uint8

/*When create data buffer
 *EX:	#define SIZE_1 5
 * 		ELEMENT_TYPE buffer1[SIZE_1]
 * */

/*******************************************************************************
 *                              Module Data Types                              *
 *******************************************************************************/

/*Structure for FIFO buffer*/
typedef struct{
	uint32 length;
	uint32 count;
	ELEMENT_TYPE* head;
	ELEMENT_TYPE* base;
	ELEMENT_TYPE* tail;
}FIFO_Buf_t;

/*Enumeration for different status of FIFO buffer*/

typedef enum{
	FIFO_NO_ERROR,
	FIFO_FULL,
	FIFO_NULL,
	FIFO_EMPTY
}FIFO_Status;


/*******************************************************************************
 *                      Function Prototypes                                    *
 *******************************************************************************/

/* Function to initialize FIFO buffer */
FIFO_Status FIFO_init(FIFO_Buf_t* fifo_buf,ELEMENT_TYPE *buffer,uint32 len);

/* Function to add item in FIFO buffer */
FIFO_Status FIFO_enqueue(FIFO_Buf_t* fifo_buf,ELEMENT_TYPE data);

/* Function to get item from FIFO buffer */
FIFO_Status FIFO_dequeue(FIFO_Buf_t* fifo_buf,ELEMENT_TYPE *data);

/* Function to check if FIFO is full */
FIFO_Status FIFO_is_full(const FIFO_Buf_t* fifo_buf);

/* Function to print all data buffer */
FIFO_Status FIFO_print(const FIFO_Buf_t* fifo_buf);




#endif /* FIFO_H_ */
