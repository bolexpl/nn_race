//
// main.cpp
//
// Code generation for function 'main'
//

/*************************************************************************/
/* This automatically generated example C++ main file shows how to call  */
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

// Include files
#include "main.h"
#include "GdNeural.h"

// Function Declarations
static void argInit_1x6_real_T(double result[6]);

static double argInit_real_T();

static void main_gdBiggerNet(GdNeural *instancePtr);

static void main_gdFilterNet(GdNeural *instancePtr);

static void main_gdNet(GdNeural *instancePtr);

// Function Definitions
static void argInit_1x6_real_T(double result[6])
{
  // Loop over the array to initialize each element.
  for (int idx1{0}; idx1 < 6; idx1++) {
    // Set the value of the array element.
    // Change this value to the value that the application requires.
    result[idx1] = argInit_real_T();
  }
}

static double argInit_real_T()
{
  return 0.0;
}

static void main_gdBiggerNet(GdNeural *instancePtr)
{
  double b_dv[6];
  double b_y1[2];
  // Initialize function 'gdBiggerNet' input arguments.
  // Initialize function input argument 'x1'.
  // Call the entry-point 'gdBiggerNet'.
  argInit_1x6_real_T(b_dv);
  instancePtr->gdBiggerNet(b_dv, b_y1);
}

static void main_gdFilterNet(GdNeural *instancePtr)
{
  double b_dv[6];
  double b_y1[2];
  // Initialize function 'gdFilterNet' input arguments.
  // Initialize function input argument 'x1'.
  // Call the entry-point 'gdFilterNet'.
  argInit_1x6_real_T(b_dv);
  instancePtr->gdFilterNet(b_dv, b_y1);
}

static void main_gdNet(GdNeural *instancePtr)
{
  double b_dv[6];
  double b_y1[2];
  // Initialize function 'gdNet' input arguments.
  // Initialize function input argument 'x1'.
  // Call the entry-point 'gdNet'.
  argInit_1x6_real_T(b_dv);
  instancePtr->gdNet(b_dv, b_y1);
}

int main(int, char **)
{
  GdNeural *classInstance;
  classInstance = new GdNeural;
  // Invoke the entry-point functions.
  // You can call entry-point functions multiple times.
  main_gdBiggerNet(classInstance);
  main_gdFilterNet(classInstance);
  main_gdNet(classInstance);
  delete classInstance;
  return 0;
}

// End of code generation (main.cpp)
