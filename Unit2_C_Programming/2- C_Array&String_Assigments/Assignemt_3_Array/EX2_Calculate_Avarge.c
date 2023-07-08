/******************************************************************************
 * Uint2     : Lesson4 Array&String >> Assignment3_Array
 * File Name : EX2_Calculate_Avarge.c
 * Data      : 8/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

#define MAXNUMBER 100
int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	float Array[MAXNUMBER];
	int n,i;
	float average=0,sum=0;
	printf("Enter The number of data: ");
	scanf("%d",&n);
	for(i=0;i<n;i++){
		printf("%d Enter Number: ",i+1);
		scanf("%f",&Array[i]);
	}
	for(i=0;i<n;i++){
		sum+=Array[i];
	}
	average=sum/n;
	printf("Average= %0.2f",average);
	return 0;
}

