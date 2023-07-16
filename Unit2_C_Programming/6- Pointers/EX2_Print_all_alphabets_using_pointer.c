/******************************************************************************
 * Uint2     : Lesson8 Function >> Assignment6
 * File Name : EX2_Print_all_alphabets_using_pointer.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	char alphabets[27];
	char *ptr=alphabets;
	int i;
	for(i=0;i<26;i++,ptr++){
		*ptr='A'+i;
	}
	ptr=alphabets;
	printf("All_alphabets are: \n");
	for(i=0;i<26;i++,ptr++){
		printf("%c ",*ptr);
	}
	return 0;
}


