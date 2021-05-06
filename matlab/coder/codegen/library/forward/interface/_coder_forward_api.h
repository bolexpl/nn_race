/*
 * _coder_forward_api.h
 *
 * Code generation for function '_coder_forward_api'
 *
 */

#ifndef _CODER_FORWARD_API_H
#define _CODER_FORWARD_API_H

/* Include files */
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include <stddef.h>
#include <stdlib.h>
#include "_coder_forward_api.h"

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

/* Function Declarations */
extern void forward(real_T x1[6], real_T b_y1[2]);
extern void forward_api(const mxArray * const prhs[1], int32_T nlhs, const
  mxArray *plhs[1]);
extern void forward_atexit(void);
extern void forward_initialize(void);
extern void forward_terminate(void);
extern void forward_xil_shutdown(void);
extern void forward_xil_terminate(void);

#endif

/* End of code generation (_coder_forward_api.h) */
