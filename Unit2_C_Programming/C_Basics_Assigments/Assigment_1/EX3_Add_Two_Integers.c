/******************************************************************************
 * Uint2     : Lesson3_C Basics >> Assignment1
 * File Name : EX3_Add_Two_Integers.c
 * Data      : 6/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);

	int num1,num2;
	int sum=0;
	printf("Enter Two integers: ");
	scanf("%d %d",&num1,&num2);
	sum=num1+num2;
	printf("Sum : %d",sum);

	return 0;
}

