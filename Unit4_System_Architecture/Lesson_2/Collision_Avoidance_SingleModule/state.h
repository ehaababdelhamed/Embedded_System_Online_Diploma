/******************************************************************************
 * File Name: state.h
 * Description: Definition some macros for create states
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/

#ifndef STATE_H_
#define STATE_H_

/*******************************************************************************
 *                         Global Macros for states                             *
 ******************************************************************************/

#define CREATE_STATE(STATE_NAME) void STATE_##STATE_NAME()
#define STATE(STATE_NAME) STATE_##STATE_NAME


#endif /* STATE_H_ */
