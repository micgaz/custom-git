#!/bin/bash

# Navigate to /bin directory (if it is linked to another directory, go there)
bin_dir="/bin"
real_bin_dir=$(readlink -f "$bin_dir")  # Get the real path if /bin is linked
cd "$real_bin_dir" || { echo "Failed to navigate to $real_bin_dir"; exit 1; }

# List the contents of /bin directory
echo "Contents of $real_bin_dir directory:"
ls -l

# Find 3 files with commonly used Linux commands
echo "Three commonly used Linux commands:"
ls -l | grep -E '^...x...x...x' | awk '{print $9}' | head -n 3

