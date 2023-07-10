/******************************************************************************
 * Uint2     : Quiz 4 >> Function
 * File Name : Q5_Clear_Bit.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int Clear_Bit(int num,int bit){
	return num&(~(1<<bit));
}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int number,bit;
	printf("Enter number: ");
	scanf("%d",&number);
	printf("Enter bit: ");
	scanf("%d",&bit);
	printf("result = %d",Clear_Bit(number,bit));
	return 0;
}

