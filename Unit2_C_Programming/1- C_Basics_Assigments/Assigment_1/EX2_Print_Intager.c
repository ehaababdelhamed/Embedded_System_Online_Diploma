/******************************************************************************
 * Uint2     : Lesson3_C Basics >> Assignment1
 * File Name : EX2_Print_Intager.c
 * Data      : 6/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);

	int num;
	printf("Enter a integer: ");
	scanf("%d",&num);
	printf("You entered : %d",num);

	return 0;
}
