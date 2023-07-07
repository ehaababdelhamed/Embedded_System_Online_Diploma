/******************************************************************************
 * Uint2     : Lesson3_C Basics >> Assignment2
 * File Name : EX3_Largest_Number.c
 * Data      : 6/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);

	float num1,num2,num3;
	float max;
	printf("Enter Three numbers : ");
	scanf("%f %f %f",&num1,&num2,&num3);
	max=num1;
	if(num2>max){
		max=num2;
	}
	if(num3>max){
		max=num3;
	}
	printf("Largest number : %f",max);

	return 0;
}
