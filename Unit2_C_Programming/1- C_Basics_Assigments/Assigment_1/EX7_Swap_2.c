/******************************************************************************
 * Uint2     : Lesson3_C Basics >> Assignment1
 * File Name : EX7_Swap_2.c
 * Data      : 6/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);

	float a,b;
	printf("Enter value of a: ");
	scanf("%f",&a);
	printf("Enter value of b: ");
	scanf("%f",&b);

	a=a+b;
	b=a-b;
	a=a-b;

	printf("After swapping, value of a: %f\n",a);
	printf("After swapping, value of b: %f",b);

	return 0;
}



