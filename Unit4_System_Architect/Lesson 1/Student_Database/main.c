/******************************************************************************
 * File Name: main.c
 * Description: Main Application for student data base using linked list
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "student_database.h"
#include <stdio.h>

/* Main Function */
int main(void){
	/******************* Initialization *****************************/
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	eOptions_t option=PRINT_OPTIONS; //For select option
	/********************* Super Loop********************************/
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
		case GET_Nth_RECORD:
			Get_Nth_Record();
			option=PRINT_OPTIONS;
			break;
		case GET_Nth_RECORD_FROM_END:
			Get_Nth_Record_FromEnd();
			option=PRINT_OPTIONS;
			break;
		case GET_MIDDLE_RECORD:
			Get_Middle_Record();
			option=PRINT_OPTIONS;
			break;
		case NUM_OF_StUDENTS:
			Num_Of_Students();
			option=PRINT_OPTIONS;
			break;
		case REVERSE_RECORDS:
			Reverse_Records();
			option=PRINT_OPTIONS;
			break;
		default:
			printf("WRONG OPTION!\n");
			option=PRINT_OPTIONS;
		}
	}
	return 0;
}

