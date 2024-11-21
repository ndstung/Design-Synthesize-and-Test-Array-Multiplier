#include "systolic_array.h"
#include <hls_stream.h>

void systolic_array(data_t A[N][N], data_t B[N][N], data_t C[N][N]) {
    #pragma HLS array_partition variable=A complete dim=0
    #pragma HLS array_partition variable=B complete dim=0
    #pragma HLS array_partition variable=C complete dim=0

    data_t local_A[N][N];
    data_t local_B[N][N];
    #pragma HLS array_partition variable=local_A complete dim=0
    #pragma HLS array_partition variable=local_B complete dim=0

    data_t buffer[N][N];
    #pragma HLS array_partition variable=buffer complete dim=0

    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            buffer[i][j] = 0;
            local_A[i][j] = A[i][j];
            local_B[i][j] = B[i][j];
        }
    }

    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            for (int k = 0; k < N; k++) {
                #pragma HLS PIPELINE II=1
                buffer[i][j] += local_A[i][k] * local_B[k][j];
            }
            C[i][j] = buffer[i][j];
        }
    }
}
