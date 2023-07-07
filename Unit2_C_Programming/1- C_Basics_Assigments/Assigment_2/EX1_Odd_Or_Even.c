/******************************************************************************
 * Uint2     : Lesson3_C Basics >> Assignment2
 * File Name : EX1_Odd_Or_Even.c
 * Data      : 6/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);

	int num;
	printf("Enter an integer you want to check : ");
	scanf("%d",&num);
	if(num%2==0){
		printf("%d is even",num);
	}else{
		printf("%d is odd",num);
	}

	return 0;
}


