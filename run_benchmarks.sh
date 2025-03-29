#!/bin/bash
#SBATCH -N 1                # Number of nodes
#SBATCH -C cpu              # Use CPU nodes
#SBATCH -q debug            # Debug queue for faster scheduling
#SBATCH -t 00:20:00         # 20 minutes
#SBATCH -J sum_benchmarks   # Job name
#SBATCH -o sum_benchmarks.out # Output file

cd $SLURM_SUBMIT_DIR

# Problem sizes to test (using smaller sizes for faster execution)
SIZES="1000 10000 100000 1000000 10000000"

# Create results files
echo "N,Runtime(s)" > direct_sum_results.csv
echo "N,Runtime(s)" > vector_sum_results.csv
echo "N,Runtime(s)" > indirect_sum_results.csv

# Run direct sum
echo "Running Direct Sum tests..."
for SIZE in $SIZES; do
    echo "Direct Sum: Size N=$SIZE"
    OUTPUT=$(./build/sum_direct $SIZE 2>&1)
    RUNTIME=$(echo "$OUTPUT" | grep "Runtime" | awk '{print $3}')
    echo "$SIZE,$RUNTIME" >> direct_sum_results.csv
    echo "$OUTPUT"
    echo "-------------------"
done

# Run vector sum
echo "Running Vector Sum tests..."
for SIZE in $SIZES; do
    echo "Vector Sum: Size N=$SIZE"
    OUTPUT=$(./build/sum_vector $SIZE 2>&1)
    RUNTIME=$(echo "$OUTPUT" | grep "Runtime" | awk '{print $3}')
    echo "$SIZE,$RUNTIME" >> vector_sum_results.csv
    echo "$OUTPUT"
    echo "-------------------"
done

# Run indirect sum
echo "Running Indirect Sum tests..."
for SIZE in $SIZES; do
    echo "Indirect Sum: Size N=$SIZE"
    OUTPUT=$(./build/sum_indirect $SIZE 2>&1)
    RUNTIME=$(echo "$OUTPUT" | grep "Runtime" | awk '{print $3}')
    echo "$SIZE,$RUNTIME" >> indirect_sum_results.csv
    echo "$OUTPUT"
    echo "-------------------"
done

echo "All tests completed!"
