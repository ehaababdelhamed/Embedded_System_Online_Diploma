/******************************************************************************
 * Uint2     : Lesson8 Function >> Assignment6
 * File Name : EX5_Complex_pointers.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

struct Semployee{
	char *name;
	int id;
};

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	struct Semployee emp1={"ehab",81},emp2={"Ahmed",95},emp3={"Khaled",75};
	struct Semployee *pts[3]={&emp1,&emp2,&emp3};
	struct Semployee (*(*ptr)[3])=&pts;
	printf("Employee 1 name: %s \n",(*(*(*ptr+0))).name);
	printf("Employee 1 id: %d \n",(*(*(*ptr+0))).id);
	printf("Employee 2 name: %s \n",(*(*(*ptr+1))).name);
	printf("Employee 2 id: %d \n",(*(*(*ptr+1))).id);
	printf("Employee 3 name: %s \n",(*(*(*ptr+2))).name);
	printf("Employee 3 id: %d \n",(*(*(*ptr+2))).id);;

	return 0;
}


