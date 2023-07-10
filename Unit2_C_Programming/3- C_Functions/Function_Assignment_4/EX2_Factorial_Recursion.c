/******************************************************************************
 * Uint2     : Lesson5 Function >> Assignment4
 * File Name : EX2_Factorial_Recursion.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int Factorial(int num);

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int f,num;
	printf("Enter Postive intergar: ");
	scanf("%d",&num);
	f=Factorial(num);
	printf("Factorial of %d = %d",num,f);
}

int Factorial(int num){
	if(num<0){
		return 0;
	}else if(num==1||num==0){
		return 1;
	}
	return num*Factorial(num-1);
}
