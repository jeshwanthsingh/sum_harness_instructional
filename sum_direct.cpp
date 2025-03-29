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
   printf(" inside direct_sum problem_setup, N=%lld \n", N);
   // Direct sum doesn't need any setup since we're not using the array
}

double
sum(int64_t N, double A[])
{
   printf(" inside direct_sum perform_sum, N=%lld \n", N);
   
   double total = 0.0;
   
   // Sum numbers from 0 to N-1
   for (int64_t i = 0; i < N; i++) {
       total += (double)i;
   }
   
   return total;
}
