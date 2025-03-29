#!/bin/bash

# Create directory for clean data
mkdir -p performance_data/csv

# Create clean CSV files with headers
echo "N,Runtime(s)" > performance_data/csv/direct_sum.csv
echo "N,Runtime(s)" > performance_data/csv/vector_sum.csv
echo "N,Runtime(s)" > performance_data/csv/indirect_sum.csv

# Extract results for specific problem sizes from benchmark outputs
# Let's use N values that match what your assignment likely expects

# Example problem sizes to use
SIZES=(1000 10000 100000 1000000 10000000 100000000)

# For each problem size, extract first runtime result from final_results
for SIZE in "${SIZES[@]}"; do
    # Get the line that corresponds to this size
    LINE=$(grep -n "^$SIZE," final_results/direct_sum.csv | head -1 | cut -d: -f1)
    if [ ! -z "$LINE" ]; then
        # Extract runtime and save to new file
        VALUE=$(sed -n "${LINE}p" final_results/direct_sum.csv)
        echo "$VALUE" >> performance_data/csv/direct_sum.csv
    fi
    
    LINE=$(grep -n "^$SIZE," final_results/vector_sum.csv | head -1 | cut -d: -f1)
    if [ ! -z "$LINE" ]; then
        VALUE=$(sed -n "${LINE}p" final_results/vector_sum.csv)
        echo "$VALUE" >> performance_data/csv/vector_sum.csv
    fi
    
    LINE=$(grep -n "^$SIZE," final_results/indirect_sum.csv | head -1 | cut -d: -f1)
    if [ ! -z "$LINE" ]; then
        VALUE=$(sed -n "${LINE}p" final_results/indirect_sum.csv)
        echo "$VALUE" >> performance_data/csv/indirect_sum.csv
    fi
done

echo "Clean data files created in performance_data/csv"
