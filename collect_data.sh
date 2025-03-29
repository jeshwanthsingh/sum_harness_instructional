#!/bin/bash

# Create final_results directory if it doesn't exist
mkdir -p final_results

# Add headers to CSV files
echo "N,Runtime(s)" > final_results/direct_sum.csv
echo "N,Runtime(s)" > final_results/vector_sum.csv
echo "N,Runtime(s)" > final_results/indirect_sum.csv

# Problem sizes to test
SIZES="1000 10000 100000 1000000 10000000 100000000"

# Run direct sum tests
echo "Running direct sum tests..."
for SIZE in $SIZES; do
    echo "  Problem size N=$SIZE"
    OUTPUT=$(./build/sum_direct $SIZE)
    RUNTIME=$(echo "$OUTPUT" | grep "Runtime" | awk '{print $3}')
    echo "$SIZE,$RUNTIME" >> final_results/direct_sum.csv
done

# Run vector sum tests
echo "Running vector sum tests..."
for SIZE in $SIZES; do
    echo "  Problem size N=$SIZE"
    OUTPUT=$(./build/sum_vector $SIZE)
    RUNTIME=$(echo "$OUTPUT" | grep "Runtime" | awk '{print $3}')
    echo "$SIZE,$RUNTIME" >> final_results/vector_sum.csv
done

# Run indirect sum tests
echo "Running indirect sum tests..."
for SIZE in $SIZES; do
    echo "  Problem size N=$SIZE"
    OUTPUT=$(./build/sum_indirect $SIZE)
    RUNTIME=$(echo "$OUTPUT" | grep "Runtime" | awk '{print $3}')
    echo "$SIZE,$RUNTIME" >> final_results/indirect_sum.csv
done

echo "Data collection complete!"
