/******************************************************************************
 * Uint2     : Lesson5 Function >> Assignment4
 * File Name : EX4_Powe_Num_Recursion.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>
#include <string.h>

#define MAXNUM 100

int power(int base,int p);

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int num;
	unsigned int powerNum;
	printf("Enter base number: ");
	scanf("%d",&num);
	printf("Enter Power number (positive integer): ");
	scanf("%d",&powerNum);
	printf("%d^%d = %d",num,powerNum,power(num,powerNum));
}

int power(int base,int p){
	if (p==1){
		return base;
	}else if(p==0){
		return 1;
	}
	return base*power(base,p-1);
}

