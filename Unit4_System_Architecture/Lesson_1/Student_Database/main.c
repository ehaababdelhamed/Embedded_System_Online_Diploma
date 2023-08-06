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
		case GET_Nth_Student:
			Get_Nth_Student();
			option=PRINT_OPTIONS;
			break;
		case GET_Nth_Student_FROM_THEEND:
			Get_Nth_Student_From_TheEnd();
			option=PRINT_OPTIONS;
			break;
		case GET_MIDDLE_STUDENT:
			Get_Middle_Student();
			option=PRINT_OPTIONS;
			break;
		case NUM_OF_StUDENTS:
			Num_Of_Students();
			option=PRINT_OPTIONS;
			break;
		case REVERSE_STUDENTS:
			Reverse_Students();
			option=PRINT_OPTIONS;
			break;
		case EXIT:
			break;
		default:
			printf("WRONG OPTION!\n");
			option=PRINT_OPTIONS;
		}
		//Finish the program;
		if(option==EXIT){
			printf("\n--------------- End the program ---------------\n");
			break;
		}
	}
	return 0;
}

