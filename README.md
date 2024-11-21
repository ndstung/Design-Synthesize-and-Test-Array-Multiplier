# Systolic Array Multiplier Project

This repository contains the design, synthesis, and testing of a systolic array multiplier using Vitis HLS and FPGA deployment. The project begins with a 4x4 systolic array multiplier and scales to handle larger matrices (16x16, 32x32, and 64x64), offering high-performance and resource-efficient solutions for matrix multiplication.

## Project Overview

Matrix multiplication is a fundamental operation in fields like signal processing, machine learning, and scientific computation. Systolic arrays provide a structured and parallelized approach, minimizing memory access and enabling high throughput. This project explores:

- The design and operation of systolic array multipliers.
- Implementation of 4x4, 16x16, 32x32, and 64x64 configurations.
- Optimization using Vitis HLS for efficient FPGA deployment.

## Key Features

1. **4x4 Systolic Array Design**: 
   - Efficiently computes matrix multiplication using multiply-accumulate (MAC) operations across a network of processing elements (PEs).
   - Localized data flow minimizes memory bottlenecks.

2. **Scalability to Larger Sizes**:
   - Parameterized design supports 16x16, 32x32, and 64x64 matrices.
   - Optimized memory and resource management ensure scalability without significant performance loss.

3. **Vitis HLS Implementation**:
   - Uses C/C++ descriptions with loop pipelining and unrolling to optimize performance.
   - Reduces latency and increases throughput through parallelism.

4. **PPA Analysis**:
   - Evaluates power, performance, and area (PPA) trade-offs for each configuration.
   - Demonstrates efficient resource utilization and high operating frequency.

## Architecture Overview

The systolic array architecture arranges PEs in a grid structure:
- **Input Flow**: Matrix A is fed row-wise, and Matrix B is fed column-wise.
- **Data Processing**: Each PE computes partial products and accumulates results.
- **Output**: Results flow through the array to produce the final matrix.

![Architecture Diagram](path/to/architecture-diagram.png)

## Performance Summary

### 4x4 Systolic Array
- **Clock Period**: 3.268 ns
- **Maximum Frequency**: 306 MHz
- **Latency**: 197 cycles (~1.97 µs)

### Resource Utilization
| Resource  | Usage   |
|-----------|---------|
| LUTs      | 1,339   |
| Flip-Flops | 1,874  |
| DSP Blocks | 0      |
| BRAMs     | 0       |

## Scaling to Larger Sizes

The design supports parameterized matrix sizes:
- **16x16**: 256 PEs
- **32x32**: 1,024 PEs
- **64x64**: 4,096 PEs

Optimizations include:
- Array partitioning for parallel data access.
- DSP utilization for efficient arithmetic operations.
- Loop pipelining and unrolling for high throughput.

## Comparison with Other Architectures

| Feature                | Systolic Array Multiplier | Serial Multiplier | Booth Multiplier |
|------------------------|---------------------------|-------------------|------------------|
| **Performance**        | High                     | Low               | Moderate         |
| **Parallelism**        | High                     | Low               | Low              |
| **Resource Utilization** | Moderate                | Low               | High             |
| **Scalability**        | High                     | Moderate          | Moderate         |

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/systolic-array-multiplier.git
