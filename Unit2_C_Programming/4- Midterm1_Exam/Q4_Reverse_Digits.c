/******************************************************************************
 * Uint2     : MidTerm1 Exam
 * File Name : Q4_Reverse_Digits.c
 * Data      : 10/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>
int ReverseDigits(int num){
	int result=0;
	int digit=0;
	while(num!=0){
		digit=num%10;
		result=result*10+digit;
		num/=10;
	}
	return result;
}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int number;
	int rev;
	printf("Enter a number: ");
	scanf("%d",&number);
	rev=ReverseDigits(number);
	printf("Reverse: %d",rev);
	return 0;
}

