#!/bin/bash

# Check if the user provided an argument
if [ $# -eq 0 ]; then
    echo "Error: Please provide a mount point or file system path."
    exit 1
fi

# Check if the provided path is a valid directory
if [ ! -d "$1" ]; then
    echo "Error: $1 is not a valid directory."
    exit 1
fi

# Check if the provided path is a mount point
if ! mountpoint -q "$1"; then
    echo "Error: $1 is not a mounted file system."
    exit 1
fi

# Get the used and available space
used_space=$(df -h "$1" | awk 'NR==2 {print $3}')
available_space=$(df -h "$1" | awk 'NR==2 {print $4}')

# Print the information
echo "Used Space: $used_space"
echo "Available Space: $available_space"
