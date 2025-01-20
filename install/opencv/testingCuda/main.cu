#include <cuda_runtime.h>
#include <stdio.h>
#include <iostream>

// CUDA kernel
__global__ void helloWorld() {
    printf("Hello, World from GPU!\\n");
}

int main() {
    // Check for CUDA-capable devices
    int deviceCount = 0;
    cudaGetDeviceCount(&deviceCount);

    if (deviceCount == 0) {
        std::cerr << "No CUDA-capable device found!" << std::endl;
        return -1;
    } else {
        std::cout << "CUDA-capable devices found: " << deviceCount << std::endl;
    }

    // Launch the kernel
    helloWorld<<<5, 1>>>();

    // Check for kernel launch errors
    cudaError_t kernelErr = cudaGetLastError();
    if (kernelErr != cudaSuccess) {
        std::cerr << "Kernel launch error: " << cudaGetErrorString(kernelErr) << std::endl;
        return -1;
    }

    // Synchronize the device
    cudaError_t syncErr = cudaDeviceSynchronize();
    if (syncErr != cudaSuccess) {
        std::cerr << "CUDA synchronization error: " << cudaGetErrorString(syncErr) << std::endl;
        return -1;
    }

    std::cout << "Hello, World from CPU!" << std::endl;

    return 0;
}

