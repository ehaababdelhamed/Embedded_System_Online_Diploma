 /******************************************************************************
 * Module: LIFO
 * File Name: lifo.c
 * Description: Header file for LIFO Data structure
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/

#ifndef LIFO_H_
#define LIFO_H_
#include "Platform_Types.h"
#include <stdlib.h>

/* Constraints :
 * this LIFO for unsigned integer data type only
 * 4 byte data for every item
 * */

/*******************************************************************************
 *                              Module Data Types                              *
 *******************************************************************************/

/*Structure for LIFO buffer*/
typedef struct{
	uint32 length;
	uint32 count;
	uint32* head;
	uint32* base;
}LIFO_Buf_t;

/*Enumeration for different status of LIFO buffer*/

typedef enum{
	LIFO_NO_ERROR,
	LIFO_FULL,
	LIFO_NULL,
	LIFO_EMPTY
}LIFO_Status;


/*******************************************************************************
 *                      Function Prototypes                                    *
 *******************************************************************************/

/* Function to add item in LIFO buffer */
LIFO_Status LIFO_push(LIFO_Buf_t* lifo_buf,uint32 data);

/* Function to get item from LIFO buffer */
LIFO_Status LIFO_pop(LIFO_Buf_t* lifo_buf,uint32 *data);

/* Function to initialize LIFO buffer */
LIFO_Status LIFO_init(LIFO_Buf_t* lifo_buf,uint32 *buffer,uint32 len);


#endif /* LIFO_H_ */
