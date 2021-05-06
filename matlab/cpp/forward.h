/*
 * MATLAB Compiler: 7.0.1 (R2019a)
 * Date: Thu May  6 23:51:40 2021
 * Arguments: "-B""macro_default""-l""../forward.m"
 */

#ifndef __forward_h
#define __forward_h 1

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
#ifndef LIB_forward_C_API 
#define LIB_forward_C_API /* No special import/export declaration */
#endif

/* GENERAL LIBRARY FUNCTIONS -- START */

extern LIB_forward_C_API 
bool MW_CALL_CONV forwardInitializeWithHandlers(
       mclOutputHandlerFcn error_handler, 
       mclOutputHandlerFcn print_handler);

extern LIB_forward_C_API 
bool MW_CALL_CONV forwardInitialize(void);

extern LIB_forward_C_API 
void MW_CALL_CONV forwardTerminate(void);

extern LIB_forward_C_API 
void MW_CALL_CONV forwardPrintStackTrace(void);

/* GENERAL LIBRARY FUNCTIONS -- END */

/* C INTERFACE -- MLX WRAPPERS FOR USER-DEFINED MATLAB FUNCTIONS -- START */

extern LIB_forward_C_API 
bool MW_CALL_CONV mlxForward(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[]);

/* C INTERFACE -- MLX WRAPPERS FOR USER-DEFINED MATLAB FUNCTIONS -- END */

/* C INTERFACE -- MLF WRAPPERS FOR USER-DEFINED MATLAB FUNCTIONS -- START */

extern LIB_forward_C_API bool MW_CALL_CONV mlfForward(int nargout, mxArray** y1, mxArray* x1);

#ifdef __cplusplus
}
#endif
/* C INTERFACE -- MLF WRAPPERS FOR USER-DEFINED MATLAB FUNCTIONS -- END */

#endif
