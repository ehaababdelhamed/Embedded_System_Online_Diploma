/******************************************************************************
 * Uint2     : Lesson3_C Basics >> Assignment2
 * File Name : EX7_Factorial.c
 * Data      : 6/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int N,i;
	int factorial=1;
	printf("Enter an integar: ");
	scanf("%d",&N);
	if(N<0){
		printf("ERROR! Factorial of negative number doesn't exist");
	}else{
		for(int i=N;i>0;i--){
			factorial*=i;
		}
		printf("Factorial= %d",factorial);
	}

	return 0;
}
