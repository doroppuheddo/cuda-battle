#ifndef KERNEL_H
#define KERNEL_H

// For the CUDA runtime routines (prefixed with "cuda_")
#include <cuda_runtime.h>

__global__ void fleetManagementKernel(int* grid);
__global__ void simulationKernel(int* grid, int* simResults);
__global__ void attackStrategyKernel(int* grid, int* attackCoords);

#endif  // KERNEL_H