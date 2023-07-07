/******************************************************************************
 * Uint2     : Lesson3_C Basics >> Assignment2
 * File Name : EX4_Positve_Or_Negative.c
 * Data      : 6/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);

	float num;
	printf("Enter a number : ");
	scanf("%f",&num);
	if(num>0){
		printf("%0.2f is positive",num);
	}else if(num<0){
		printf("%0.2f is negative",num);
	}else{
		printf("You Entered Zero");
	}

	return 0;
}


