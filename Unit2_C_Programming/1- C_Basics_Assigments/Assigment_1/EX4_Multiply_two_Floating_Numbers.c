/******************************************************************************
 * Uint2     : Lesson3_C Basics >> Assignment1
 * File Name : EX4_Multiply_two_Floating_Numbers.c
 * Data      : 6/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);

	float fnum1,fnum2;
	float product=0;
	printf("Enter Two Number : ");
	scanf("%f %f",&fnum1,&fnum2);
	product=fnum1*fnum2;
	printf("Product : %f",product);

	return 0;
}
