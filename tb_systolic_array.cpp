#include "systolic_array.h"
#include <iostream>

int main() {
    data_t A[N][N] = {
        {1, 2, 3, 4},
        {5, 6, 7, 8},
        {9, 10, 11, 12},
        {13, 14, 15, 16}
    };

    data_t B[N][N] = {
        {1, 0, 0, 0},
        {0, 1, 0, 0},
        {0, 0, 1, 0},
        {0, 0, 0, 1}
    };

    data_t C[N][N] = {0};

    // Call the systolic array function
    systolic_array(A, B, C);

    // Display the result matrix C
    std::cout << "Result matrix C:\n";
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            std::cout << C[i][j] << " ";
        }
        std::cout << "\n";
    }

    return 0;
}
