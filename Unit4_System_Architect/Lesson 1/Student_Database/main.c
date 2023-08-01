/******************************************************************************
 * File Name: main.c
 * Description: Student database appliaction
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "student_database.h"
#include <stdio.h>

/* Main Function */
int main(void){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	eOptions_t option=PRINT_OPTIONS;
	while(1){
		switch(option){
		case PRINT_OPTIONS:
			Print_Options();
			scanf("%u",&option);
			break;
		case ADD_STUDENT:
			Add_Student();
			option=PRINT_OPTIONS;
			break;
		case DELETE_STUDENT:
			Delete_Student();
			option=PRINT_OPTIONS;
			break;
		case PRINT_STUDENTS:
			Print_Students();
			option=PRINT_OPTIONS;
			break;
		case DELETE_ALL_STUDENTS:
			Delete_allStudents();
			option=PRINT_OPTIONS;
			break;
		default:
			printf("WRONG OPTION!\n");
			option=PRINT_OPTIONS;
		}
	}
	return 0;
}
