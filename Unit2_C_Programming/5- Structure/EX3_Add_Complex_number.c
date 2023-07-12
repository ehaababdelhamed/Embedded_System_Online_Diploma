/******************************************************************************
 * Uint2     : Lesson6 Structure >> Assignment 5
 * File Name : EX3_Add_Complex_number.c
 * Data      : 12/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

struct SComplex{
	float real;
	float img;
};

struct SComplex ReadComplexnNum(){
	struct SComplex cnum;
	printf("\nEnter real and imaginary respectively: ");
    scanf("%f %f",&cnum.real,&cnum.img);
	return cnum;
}

struct SComplex SumComplexNum(struct SComplex num1,struct SComplex num2){
	struct SComplex sum;
	sum.real=num1.real+num2.real;
	sum.img=num1.img+num2.img;
	return sum;
}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	struct SComplex number1,number2,sum;
	printf("for 1st complex number: ");
	number1=ReadComplexnNum();
	printf("for 2nd complex number: ");
	number2=ReadComplexnNum();
	sum=SumComplexNum(number1, number2);
	printf("Sum=%0.1f + %0.1f i",sum.real,sum.img);
	return 0;
}
