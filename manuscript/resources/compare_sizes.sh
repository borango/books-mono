#!/bin/bash

# Check if directories exist
if [ ! -d "highres" ]; then
  echo "Error: 'highres' directory not found"
  exit 1
fi
if [ ! -d "160_res" ]; then
  echo "Error: '160_res' directory not found"
  exit 1
fi

# Print header
printf "%-40s %10s %10s\n" "Filename" "highres" "160_res"
printf "%-40s %10s %10s\n" "--------" "-------" "-------"

# Function to get file size in human-readable format
get_size() {
  if [ -f "$1" ]; then
    ls -lh "$1" 2>/dev/null | awk '{print $5}'
  else
    echo ""
  fi
}

# Collect unique image filenames from both directories
files=$(find highres 160_res -type f \( -iname "*.png" -o -iname "*.jpg" \) -exec basename {} \; | sort -u)

# Compare sizes
for file in $files; do
  highres_file="highres/$file"
  lowres_file="160_res/$file"
  highres_size=$(get_size "$highres_file")
  lowres_size=$(get_size "$lowres_file")
  printf "%-40s %10s %10s\n" "$file" "$highres_size" "$lowres_size"
done
