/******************************************************************************
 * Uint2     : Quiz 4 >> Function
 * File Name : Q2_Swap_Two_Array_With_Differnet_Length.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>
#include <string.h>
#define SIZE_A 8
#define SIZE_B 5

void SwapArrays(int array_A[],int size_A,int Array_B[],int size_B){
	int size;
	int temp;
	if(size_A<size_B){
		size=size_A;
	}else{
		size=size_B;
	}
	for(int i=0;i<size;i++){
		temp=array_A[i];
		array_A[i]=Array_B[i];
		Array_B[i]=temp;
	}
}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int A[SIZE_A]={1,2,3,4,5,6,7,8};
	int B[SIZE_B]={11,22,33,44,55};
	printf("Array  before swap: ");
	for(int i=0;i<SIZE_A;i++){
		printf("%d ",A[i]);
	}
	printf("\nArray B before swap: ");
	for(int i=0;i<SIZE_B;i++){
		printf("%d ",B[i]);
	}
	SwapArrays(A, SIZE_A, B, SIZE_B);
	printf("\nArray A after swap: ");
	for(int i=0;i<SIZE_A;i++){
		printf("%d ",A[i]);
	}
	printf("\nArray B after swap: ");
	for(int i=0;i<SIZE_B;i++){
		printf("%d ",B[i]);
	}
	return 0;
}

