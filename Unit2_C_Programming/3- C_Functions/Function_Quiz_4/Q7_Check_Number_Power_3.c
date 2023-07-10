/******************************************************************************
 * Uint2     : Quiz 4 >> Function
 * File Name : Q7_Check_Number_Power_3.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int check_Number(int num);

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int num;
	printf("Enter number : ");
	scanf("%d",&num);
	printf("%d ==> %d",num,check_Number(num));
	return 0;
}

int check_Number(int num){
	int i=1;
	while(i<num){
		i*=3;
		if(i==num){
			return 0;
		}
	}
	return 1;
}
