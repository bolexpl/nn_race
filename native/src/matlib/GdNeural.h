//
// GdNeural.h
//
// Code generation for function 'GdNeural'
//

#ifndef GDNEURAL_H
#define GDNEURAL_H

// Include files
#include "rtwtypes.h"
#include <cstddef>
#include <cstdlib>

// Type Definitions
class GdNeural {
public:
  GdNeural();
  ~GdNeural();
  void gdBiggerNet(const double x1[6], double b_y1[2]);
  void gdFilterNet(const double x1[6], double b_y1[2]);
  void gdNet(const double x1[6], double b_y1[2]);
};

#endif
// End of code generation (GdNeural.h)
