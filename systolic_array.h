#ifndef SYSTOLIC_ARRAY_H
#define SYSTOLIC_ARRAY_H

#include <ap_fixed.h>

// Define the data type (e.g., half-precision floating point)
typedef ap_fixed<16, 8> data_t;

#define N 4 // Matrix size (4x4)

void systolic_array(data_t A[N][N], data_t B[N][N], data_t C[N][N]);

#endif
