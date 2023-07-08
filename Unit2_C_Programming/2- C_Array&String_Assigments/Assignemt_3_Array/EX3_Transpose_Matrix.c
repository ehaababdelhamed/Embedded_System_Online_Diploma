/******************************************************************************
 * Uint2     : Lesson4 Array&String >> Assignment3_Array
 * File Name : EX3_Transpose_Matrix.c
 * Data      : 8/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

#define MAXROW 10
#define MAXCOL 10


int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int Matrix[MAXROW][MAXCOL],Transpose[MAXROW][MAXCOL];
	int row,col;
	int i,j;
	printf("Enter rows and columns of matrix: ");
	scanf("%d %d",&row,&col);
	for(i=0;i<row;i++){
		for(j=0;j<col;j++){
			printf("Enter a%d%d : ",i+1,j+1);
			scanf("%d",&Matrix[i][j]);
		}
	}
	for(i=0;i<row;i++){
		for(j=0;j<col;j++){
			Transpose[j][i]=Matrix[i][j];
		}
	}
	printf("\nEntered Matrix\n");
	for(i=0;i<row;i++){
		for(j=0;j<col;j++){
			printf("%d\t",Matrix[i][j]);
		}
		printf("\n");
	}
	printf("\nTranspose of Matrix\n");
	for(i=0;i<col;i++){
		for(j=0;j<row;j++){
			printf("%d\t",Transpose[i][j]);
		}
		printf("\n");
	}
	return 0;
}
