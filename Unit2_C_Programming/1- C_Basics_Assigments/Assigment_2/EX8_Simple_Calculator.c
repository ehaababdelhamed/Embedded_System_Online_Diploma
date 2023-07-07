/******************************************************************************
 * Uint2     : Lesson3_C Basics >> Assignment2
 * File Name : EX8_Simple_Calculator.c
 * Data      : 6/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);

	char operator;
	float op1,op2;
	printf("Enter operator (+,-,*,/) : ");
	scanf("%c",&operator);
	printf("Enter Two operands: ");
	scanf("%f %f",&op1,&op2);
	switch(operator){
	case '+':
		printf("%0.2f + %0.2f = %0.2f",op1,op2,op1+op2);
		break;
	case '-':
		printf("%0.2f - %0.2f = %0.2f",op1,op2,op1-op2);
		break;
	case '*':
		printf("%0.2f * %0.2f = %0.2f",op1,op2,op1*op2);
		break;
	case '/':
		printf("%0.2f / %0.2f = %0.2f",op1,op2,op1/op2);
		break;
	default:
		printf("ERROR!");
		break;
	}
	return 0;
}
