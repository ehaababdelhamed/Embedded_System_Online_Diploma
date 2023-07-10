/******************************************************************************
 * Uint2     : MidTerm1 Exam
 * File Name : Q2_Calculate_Square_Root.c
 * Data      : 10/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

float SquareRoot(float num){
	float result;
	float count=1;
	int i;
	if(num<0){
		return -1;
	}
	else{
		//For six number after decimal point
		for(i=0;i<7;i++){
			while(result*result<=num){
				result+=count;
			}
			result-=count;
			if(result*result==num){
				break;
			}
			count/=10;
		}
	}
	return result;
}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	float number;
	float sqrRoot;
	printf("Enter number: ");
	scanf("%f",&number);
	sqrRoot=SquareRoot(number);
	printf("Square root= %f",sqrRoot);
	return 0;
}
