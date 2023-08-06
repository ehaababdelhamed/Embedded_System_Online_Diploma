/******************************************************************************
 * File Name: student_database.c
 * Description: Header file for Student database using linked list
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#ifndef STUDENT_DATABASE_H_
#define STUDENT_DATABASE_H_

#include "Platform_Types.h"


/*******************************************************************************
 *                              Module Data Types                              *
 *******************************************************************************/

//Structure for information of student
typedef struct{
	char name[40];
	uint32 id;
	float32 height;
}SData_t;

//Structure for records in the list
struct Sstudent{
	SData_t student;
	struct Sstudent* PNextStudent;
};
typedef struct Sstudent Sstudent_t;

typedef enum {
	PRINT_OPTIONS,ADD_STUDENT,DELETE_STUDENT,PRINT_STUDENTS,
	DELETE_ALL_STUDENTS,GET_Nth_Student,GET_Nth_Student_FROM_THEEND,
	GET_MIDDLE_STUDENT,NUM_OF_StUDENTS,REVERSE_STUDENTS,EXIT
}eOptions_t;

/*******************************************************************************
 *                      Function Prototypes                                    *
 *******************************************************************************/

/************************** Options Function ***********************************/
//Description: Function to display all option in application
void Print_Options();
// Description: Function to add student in the list
void Add_Student();
// Description: Function to delete student from the list
void Delete_Student();
// Description: Function to display all students in the list
void Print_Students();
// Description: Function to delete all students in the list
void Delete_allStudents();
//Description: Function to find student by record number
void Get_Nth_Student();
//Description: Function to find n'th record from the end
void Get_Nth_Student_From_TheEnd();
//Description: Function to find the middle record
void Get_Middle_Student();
//Description: Function to count the number of students in the list
void Num_Of_Students();
//Description: Function to reverse records in the list
void Reverse_Students();
/*****************************************************************************/
//Description: Function to fill data of student (name - id - height)
void FillDataOfStudent(SData_t* newStudent);
//Description: Function to search for student by its ID
Sstudent_t* GetStuedentFromId(uint32 ID);




#endif /* STUDENT_DATABASE_H_ */
