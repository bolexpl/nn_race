//
// GdNet.h
//
// Code generation for function 'GdNet'
//

#ifndef GDNET_H
#define GDNET_H

// Include files
#include "rtwtypes.h"
#include <cstddef>
#include <cstdlib>

// Type Definitions
class GdNet {
public:
  GdNet();
  ~GdNet();
  void gdNet(const double x1[14], double b_y1[2]);
  void gdNetMix(const double x1[14], double b_y1[2]);
};

#endif
// End of code generation (GdNet.h)
