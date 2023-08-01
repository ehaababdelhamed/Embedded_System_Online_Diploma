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

//Structure for record
struct Sstudent{
	SData_t student;
	struct Sstudent* PNextStudent;
};
typedef struct Sstudent Sstudent_t;

typedef enum {
	PRINT_OPTIONS,ADD_STUDENT,DELETE_STUDENT,PRINT_STUDENTS,DELETE_ALL_STUDENTS
}eOptions_t;

/*******************************************************************************
 *                                   Definition                                *
 *******************************************************************************/
#define MINOPTION PRINT_OPTIONS
#define MAXOPTION DELETE_ALL_STUDENTS

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
/*****************************************************************************/
//Description: Function to fill data of student (name - id - height)
void FillDataOfStudent(SData_t* newStudent);
//Description: Function to search for student by its ID
Sstudent_t* GetStuedentFromId(uint32 ID);


#endif /* STUDENT_DATABASE_H_ */
