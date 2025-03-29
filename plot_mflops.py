"""

E. Wes Bethel, Copyright (C) 2022

October 2022

Description: This code loads a .csv file and creates a 3-variable plot

Inputs: the named file "sample_data_3vars.csv"

Outputs: displays a chart with matplotlib

Dependencies: matplotlib, pandas modules

Assumptions: developed and tested using Python version 3.8.8 on macOS 11.6

"""

import pandas as pd
import matplotlib.pyplot as plt

# Define CSV files for different sum implementations
csv_files = {
    'Direct Sum': 'performance_data/csv/direct_sum.csv',
    'Indirect Sum': 'performance_data/csv/indirect_sum.csv',
    'Vector Sum': 'performance_data/csv/vector_sum.csv'
}

# Create a figure with subplots
plt.figure(figsize=(15, 5))

# Iterate through CSV files
for i, (title, fname) in enumerate(csv_files.items(), 1):
    # Read the CSV file
    df = pd.read_csv(fname)

    # Calculate MFLOPS
    # MFLOPS = (2 * n^2) / (time * 10^6)
    mflops = [2 * (n**2) / (runtime * 1e6) for n, runtime in zip(df['N'], df['Runtime(s)'])]

    # Create subplot
    plt.subplot(1, 3, i)
    plt.title(f"MFLOPS: {title}")
    
    # Plot MFLOPS
    plt.plot(df['N'], mflops, "r-o")

    # Set scales and labels
    plt.xscale("log")
    plt.yscale("log")
    plt.xlabel("Problem Size (N)")
    plt.ylabel("MFLOPS")
    plt.grid(True)

# Adjust layout and save
plt.tight_layout()
plt.savefig("performance_data/plots/mflops_comparison.png")
plt.show()
