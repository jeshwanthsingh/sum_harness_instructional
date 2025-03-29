
#include <algorithm>
#include <chrono>
#include <iomanip>
#include <iostream>
#include <random>
#include <vector>
#include <string.h>

#include "sums.h"

static int64_t* indices = nullptr;

void 
setup(int64_t N, double A[])
{
   printf(" inside sum_indirect problem_setup, N=%lld \n", N);
   
   // Initialize array with values 0..N-1
   for (int64_t i = 0; i < N; i++) {
       A[i] = (double)i;
   }
   
   // Allocate indices array for random access
   if (indices != nullptr) {
       delete[] indices;
   }
   indices = new int64_t[N];
   
   // Random number generator with lrand48 as specified in the assignment
   for (int64_t i = 0; i < N; i++) {
       indices[i] = lrand48() % N;
   }
}

double
sum(int64_t N, double A[])
{
   printf(" inside sum_indirect perform_sum, N=%lld \n", N);
   
   double total = 0.0;
   
   // Sum values using indirect access pattern
   for (int64_t i = 0; i < N; i++) {
       total += A[indices[i]];
   }
   
   return total;
}
