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
  void gdNet2T20N(const double x1[14], double b_y1[2]);
  void gdNet2T40N(const double x1[14], double b_y1[2]);
  void gdNet2T40ND(const double x1[14], double b_y1[2]);
  void gdNet3T40N_working(const double x1[14], double b_y1[2]);
};

#endif
// End of code generation (GdNet.h)
