#!/bin/bash

# This script can be used to reproduce the case-study results 
# from the paper "INDIANA - Verifying (Random) Probing
# Security through Indistinguishability Analysis". 
# As a parameter, you can pass a target folder from  the 
# `case-studies` directory. More details can be found in the 
# README.md in Section 10. 

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

directory=$1
subfolder_name="config"

# Find all subfolders with the specified name and loop over their files
find "$directory" -type d -name "$subfolder_name" | while read -r folder; do
    echo "Processing files in: $folder"
    for file in "$folder"/*; do
        if [ -f "$file" ]; then
            echo "Processing file: $file"
            ./bin/release/indiana -c $file
        fi
    done
done

