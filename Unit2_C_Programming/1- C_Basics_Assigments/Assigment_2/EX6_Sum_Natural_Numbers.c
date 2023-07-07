/******************************************************************************
 * Uint2     : Lesson3_C Basics >> Assignment2
 * File Name : EX6_Sum_Natural_Numbers.c
 * Data      : 6/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int N,i;
	int sum=0;
	printf("Enter an integar: ");
	scanf("%d",&N);
	for(i=N;i>0;i--){
		sum+=i;
	}
	printf("Sum= %d",sum);

	return 0;
}
