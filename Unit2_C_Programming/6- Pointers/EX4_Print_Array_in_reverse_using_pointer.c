/******************************************************************************
 * Uint2     : Lesson8 Function >> Assignment6
 * File Name : EX4_Print_Array_in_reverse_using_pointer.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

#define MAXSIZE 15

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int arr[MAXSIZE];
	int size;
	int i;
	int *ptr=arr;
	printf("Input the number of elements to store in the array (max 15) : ");
	scanf("%d",&size);
	printf("Input 5 number of elements in the array :\n");
	for(i=0;i<size;i++,ptr++){
		printf("element - %d: ",i+1);
		scanf("%d",ptr);
	}
	printf("The elements of array in reverse order are :\n");
	while(i>0){
		i--;
		ptr--;
		printf("element - %d: %d\n",i+1,*ptr);
	}
	return 0;
}


