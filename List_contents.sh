#!/bin/bash

# Check if there are no arguments
if [ $# -eq 0 ]; then
    echo "Error: No directory paths provided."
    exit 1
fi

# Loop through each provided directory path
for dir in "$@"; do
    # Check if the provided path is a directory
    if [ ! -d "$dir" ]; then
        echo "Error: $dir is not a directory."
        continue
    fi

    # Print the directory name
    echo "Contents of $dir:"
    
    # List the contents of the directory
    ls -l "$dir"
    
    # Add a newline for separation
    echo
done
