/******************************************************************************
 * Uint2     : Lesson4 Array&String >> Assignment3_Array
 * File Name : EX4_Insert_Elemnet_In_Array.c
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
	int insertnum,location;
	printf("Enter number of elements: ");
	scanf("%d",&n);
	for(i=0;i<n;i++){
		scanf("%d",&Array[i]);
	}
	printf("Enter the number to be inserted:  ");
	scanf("%d",&insertnum);
	printf("Enter the location:  ");
	scanf("%d",&location);
	for(int i=n;i!=(location-1);i--){
		Array[i]=Array[i-1];
	}
	Array[location-1]=insertnum;
	for(i=0;i<n+1;i++){
		printf("%d ",Array[i]);
	}
	return 0;
}
