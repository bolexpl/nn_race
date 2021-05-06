/*
 * MATLAB Compiler: 7.0.1 (R2019a)
 * Date: Fri May  7 01:21:57 2021
 * Arguments: "-B""macro_default""-W""lib:neural""forward.m"
 */

#ifndef __neural_h
#define __neural_h 1

#if defined(__cplusplus) && !defined(mclmcrrt_h) && defined(__linux__)
#  pragma implementation "mclmcrrt.h"
#endif
#include "mclmcrrt.h"
#ifdef __cplusplus
extern "C" {
#endif

/* This symbol is defined in shared libraries. Define it here
 * (to nothing) in case this isn't a shared library. 
 */
#ifndef LIB_neural_C_API 
#define LIB_neural_C_API /* No special import/export declaration */
#endif

/* GENERAL LIBRARY FUNCTIONS -- START */

extern LIB_neural_C_API 
bool MW_CALL_CONV neuralInitializeWithHandlers(
       mclOutputHandlerFcn error_handler, 
       mclOutputHandlerFcn print_handler);

extern LIB_neural_C_API 
bool MW_CALL_CONV neuralInitialize(void);

extern LIB_neural_C_API 
void MW_CALL_CONV neuralTerminate(void);

extern LIB_neural_C_API 
void MW_CALL_CONV neuralPrintStackTrace(void);

/* GENERAL LIBRARY FUNCTIONS -- END */

/* C INTERFACE -- MLX WRAPPERS FOR USER-DEFINED MATLAB FUNCTIONS -- START */

extern LIB_neural_C_API 
bool MW_CALL_CONV mlxForward(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[]);

/* C INTERFACE -- MLX WRAPPERS FOR USER-DEFINED MATLAB FUNCTIONS -- END */

/* C INTERFACE -- MLF WRAPPERS FOR USER-DEFINED MATLAB FUNCTIONS -- START */

extern LIB_neural_C_API bool MW_CALL_CONV mlfForward(int nargout, mxArray** y1, mxArray* x1);

#ifdef __cplusplus
}
#endif
/* C INTERFACE -- MLF WRAPPERS FOR USER-DEFINED MATLAB FUNCTIONS -- END */

#endif
