/******************************************************************************
 * Uint2     : Quiz 4 >> Function
 * File Name : Q7_Last_Occurrence.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

#define SIZE 10

int check_4th_bit(int num,int bit){
	if(num&(1<<3)){
		return 1;
	}else{
		return 0;
	}
}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int num;
	printf("Enter number : ");
	scanf("%d",&num);
	printf("4th bit = %d",check_4th_bit(num,4));
	return 0;
}

