/******************************************************************************
 * Uint2     : Quiz 4 >> Function
 * File Name : Q7_Last_Occurrence.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

#define SIZE 10

int Last_Occurance(int array[],int size,int num);

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int num;
	int array[SIZE]={1,2,1,3,5,6,7,1,8,9};
	int index;
	printf("Enter number : ");
	scanf("%d",&num);
	index=Last_Occurance(array,SIZE,num);
	printf("%d ==> %d",num,index);
	return 0;
}

int Last_Occurance(int array[],int size,int num){
	int i;
	int index=-1;
	for(i=0;i<size;i++){
		if(num==array[i])
			index=i;
	}
	return index;
}
