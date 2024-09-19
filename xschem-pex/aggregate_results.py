import os
import pandas as pd
import glob
import re

# Directory where the files are located
directory = "./results"

# Pattern to match the filenames
file_pattern = os.path.join(directory, "*__*__*__*__*.data")

# Regular expression to extract a, b, c, d from the filename with two underscores as separators
file_regex = re.compile(r'.*__([^_]+)__([^_]+)__([^_]+)__([^_]+)__.*\.data')

# List to store the DataFrames
dataframes = []

# Function to process each file
def process_file(file_path):
    # Extract filename from the full file path
    filename = os.path.basename(file_path)
    
    # Match the filename to extract a, b, c, d
    match = file_regex.match(filename)
    if match:
        # Extract a, b, c, d from the filename (with appropriate types)
        a = match.group(1)   # a is a string
        b = match.group(2)   # b is a string
        c = float(match.group(3))  # c is a float
        d = float(match.group(4))  # d is a float
        
        # Load the file into a pandas DataFrame
        with open(file_path, 'r') as file:
            # Read the first line as column names
            columns = file.readline().strip().split()
            # Read the second line as values
            values = file.readline().strip().split()
            # Convert values to float
            values = list(map(float, values))
            # Create a pandas DataFrame with a single row
            df = pd.DataFrame([values], columns=columns)
        
        # Add a, b, c, d as new columns to the DataFrame
        df['mode'] = a
        df['corner'] = b
        df['temperature'] = c
        df['bias_current'] = d
        
        # Append the DataFrame to the list
        dataframes.append(df)
        
        print(f"Processed file: {filename} -> mode: {a}, corner: {b}, temperature: {c}, bias_current: {d}")
    else:
        print(f"Filename {filename} does not match the pattern.")
        return None

# Get all files matching the pattern
files = glob.glob(file_pattern)

# Process each file
for file in files:
    process_file(file)

# Concatenate all DataFrames into one big DataFrame
if dataframes:
    big_df = pd.concat(dataframes, ignore_index=True)
    print(big_df)
    big_df.to_csv("vco_characterization.csv")
else:
    print("No valid files were processed.")

