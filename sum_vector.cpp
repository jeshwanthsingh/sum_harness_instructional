#include <algorithm>
#include <chrono>
#include <iomanip>
#include <iostream>
#include <random>
#include <vector>
#include <string.h>
#include "sums.h"

void 
setup(int64_t N, double A[])
{
   printf(" inside sum_vector problem_setup, N=%lld \n", N);
   
   // Initialize array with values 0..N-1
   for (int64_t i = 0; i < N; i++) {
       A[i] = (double)i;
   }
}

double
sum(int64_t N, double A[])
{
   printf(" inside sum_vector perform_sum, N=%lld \n", N);
   
   double total = 0.0;
   
   // Sum values from the array
   for (int64_t i = 0; i < N; i++) {
       total += A[i];
   }
   
   return total;
}
