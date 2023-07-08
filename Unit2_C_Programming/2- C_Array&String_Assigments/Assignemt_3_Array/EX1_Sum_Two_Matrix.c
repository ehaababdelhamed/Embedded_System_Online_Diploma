/******************************************************************************
 * Uint2     : Lesson4 Array&String >> Assignment3_Array
 * File Name : EX1_Sum_Two_Matrix.c
 * Data      : 8/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	float Matrix1[2][2],Matrix2[2][2],Sum[2][2];
	int row,col;
	printf("Enter the element of 1st matrix\n");
	for(row=0;row<2;row++){
		for(col=0;col<2;col++){
			printf("Enter a%d%d : ",row+1,col+1);
			scanf("%f",&Matrix1[row][col]);
		}
	}
	printf("Enter the element of 2nd matrix\n");
	for(row=0;row<2;row++){
		for(col=0;col<2;col++){
			printf("Enter b%d%d : ",row+1,col+1);
			scanf("%f",&Matrix2[row][col]);
		}
	}
	for(row=0;row<2;row++){
		for(col=0;col<2;col++){
			Sum[row][col]=Matrix1[row][col]+Matrix2[row][col];
		}
	}
	printf("\nSum of matrix\n");
	for(row=0;row<2;row++){
		for(col=0;col<2;col++){
			printf("%0.2f\t",Sum[row][col]);
		}
		printf("\n");
	}
	return 0;
}
