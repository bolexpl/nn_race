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
  void gdNetBDMix20(const double x1[14], double b_y1[2]);
  void gdNetBDMix20v2(const double x1[14], double b_y1[2]);
  void gdNetBDMix30(const double x1[14], double b_y1[2]);
  void gdNetBDMix30v2(const double x1[14], double b_y1[2]);
  void gdNetBDMix40(const double x1[14], double b_y1[2]);
  void gdNetBDMix40v2(const double x1[14], double b_y1[2]);
  void gdNetBothDouble(const double x1[14], double b_y1[2]);
  void gdNetBothDoubleMix(const double x1[14], double b_y1[2]);
  void gdNetBothDoublev2(const double x1[14], double b_y1[2]);
  void gdNetBothv2(const double x1[14], double b_y1[2]);
};

#endif
// End of code generation (GdNet.h)
