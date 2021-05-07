/*
 * main.c
 *
 * Code generation for function 'main'
 *
 */

/*************************************************************************/
/* This automatically generated example C main file shows how to call    */
/* entry-point functions that MATLAB Coder generated. You must customize */
/* this file for your application. Do not modify this file directly.     */
/* Instead, make a copy of this file, modify it, and integrate it into   */
/* your development environment.                                         */
/*                                                                       */
/* This file initializes entry-point function arguments to a default     */
/* size and value before calling the entry-point functions. It does      */
/* not store or use any values returned from the entry-point functions.  */
/* If necessary, it does pre-allocate memory for returned values.        */
/* You can use this file as a starting point for a main function that    */
/* you can deploy in your application.                                   */
/*                                                                       */
/* After you copy the file, and before you deploy it, you must make the  */
/* following changes:                                                    */
/* * For variable-size function arguments, change the example sizes to   */
/* the sizes that your application requires.                             */
/* * Change the example values of function arguments to the values that  */
/* your application requires.                                            */
/* * If the entry-point functions return values, store these values or   */
/* otherwise use them as required by your application.                   */
/*                                                                       */
/*************************************************************************/
/* Include files */
#include "forward.h"
#include "main.h"
#include "forward_terminate.h"
#include "forward_initialize.h"

/* Function Declarations */
static void argInit_6x1_real_T(double result[6]);
static double argInit_real_T(void);
static void main_forward(void);

/* Function Definitions */
static void argInit_6x1_real_T(double result[6])
{
  int idx0;

  /* Loop over the array to initialize each element. */
  for (idx0 = 0; idx0 < 6; idx0++) {
    /* Set the value of the array element.
       Change this value to the value that the application requires. */
    result[idx0] = argInit_real_T();
  }
}

static double argInit_real_T(void)
{
  return 0.0;
}

static void main_forward(void)
{
  double dv2[6];
  double b_y1[2];

  /* Initialize function 'forward' input arguments. */
  /* Initialize function input argument 'x1'. */
  /* Call the entry-point 'forward'. */
  argInit_6x1_real_T(dv2);
  forward(dv2, b_y1);
}

int main(int argc, const char * const argv[])
{
  (void)argc;
  (void)argv;

  /* Initialize the application.
     You do not need to do this more than one time. */
  forward_initialize();

  /* Invoke the entry-point functions.
     You can call entry-point functions multiple times. */
  main_forward();

  /* Terminate the application.
     You do not need to do this more than one time. */
  forward_terminate();
  return 0;
}

/* End of code generation (main.c) */
