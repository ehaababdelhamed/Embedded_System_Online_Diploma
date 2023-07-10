/******************************************************************************
 * Uint2     : MidTerm1 Exam
 * File Name : Q1_Sum_all_digits.c
 * Data      : 10/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

unsigned int Sumdigits(unsigned int num){
	unsigned int count=0;
	while(num!=0){
		count+=num%10;
		num/=10;
	}
	return count;
}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int number;
	unsigned int sum;
	printf("Enter number: ");
	scanf("%d",&number);
	sum=Sumdigits(number);
	printf("Sum of digits= %d",sum);
	return 0;
}
