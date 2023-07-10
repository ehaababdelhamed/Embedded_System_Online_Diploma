/******************************************************************************
 * Uint2     : MidTerm1 Exam
 * File Name : Q7_Sum_Number_WithoutLoop.c
 * Data      : 10/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

#define MAXSIZE 100

int Summation(int num){
	if(num==1)
		return 1;
	return num+Summation(num-1);
}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	printf("%d",Summation(100));
	return 0;
}
