/******************************************************************************
 * Uint2     : Quiz 4 >> Function
 * File Name : Q2_Swap_Two_Array_With_Differnet_Length.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>
#define SIZE 8

void RevArray(int array[],int size){
	int temp;
	int i;
	for(i=0;i<=(size/2);i++){
		temp=array[i];
		array[i]=array[size-1-i];
		array[size-1-i]=temp;
	}
}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int A[SIZE]={1,2,3,4,5,6,7,8};

	printf("\nArray before reverse: ");
	for(int i=0;i<SIZE;i++){
		printf("%d ",A[i]);
	}
	RevArray(A,SIZE);
	printf("\nArray after reverse : ");
	for(int i=0;i<SIZE;i++){
		printf("%d ",A[i]);
	}
	return 0;
}

