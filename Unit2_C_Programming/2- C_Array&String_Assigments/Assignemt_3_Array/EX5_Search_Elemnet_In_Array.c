/******************************************************************************
 * Uint2     : Lesson4 Array&String >> Assignment3_Array
 * File Name : EX5_Search_Elemnet_In_Array.c
 * Data      : 8/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

#define MAXNUMBER 100
int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int Array[MAXNUMBER];
	int n,i;
	int Searchnum;
	printf("Enter number of elements: ");
	scanf("%d",&n);
	for(i=0;i<n;i++){
		scanf("%d",&Array[i]);
	}
	printf("Enter the number to be searched:  ");
	scanf("%d",&Searchnum);
	for(i=0;i<n;i++){
		if(Searchnum==Array[i]){
			printf("Number is found at location %d",i+1);
			break;
		}
	}
	if(i==n){
		printf("Number is not found ");
	}
	return 0;
}
