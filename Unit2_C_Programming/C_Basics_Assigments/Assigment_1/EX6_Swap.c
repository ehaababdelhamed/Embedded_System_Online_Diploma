/******************************************************************************
 * Uint2     : Lesson3_C Basics >> Assignment1
 * File Name : EX6_Swap.c
 * Data      : 6/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);

	float a,b,temp;
	printf("Enter value of a: ");
	scanf("%f",&a);
	printf("Enter value of b: ");
	scanf("%f",&b);
	temp=a;
	a=b;
	b=temp;
	printf("After swapping, value of a: %f\n",a);
	printf("After swapping, value of b: %f",b);

	return 0;
}



