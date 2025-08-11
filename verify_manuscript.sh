#!/bin/bash

cd manuscript

# Check if Subset.txt exists
if [ ! -f "Subset.txt" ]; then
  echo "Error: Subset.txt not found"
  exit 1
fi

# Check 1: Verify each file in Subset.txt exists in filesystem
echo "Checking if files in Subset.txt exist in manuscript..."
while IFS= read -r file; do

    # skip empty lines
    if [[ -z "$file" ]]; then continue
    fi
    if [ ! -f "$file" ]; then
        echo -e "missing file: \e[1;31m$file\e[0m"
    fi
done < Subset.txt
echo "... done."

# Check 2: Verify each *.md file in manuscript is listed in Subset.txt
echo -e "\nChecking if all *.md files in manuscript are listed in Subset.txt..."
for file in *.md; do
    # Extract basename for comparison
    filename=$(basename "$file")

    # ignore file of name "index.md" because it exists only for Observable, not for Leanpub
    if [[ "$filename" == "index.md" ]]; then continue
    fi

    if ! grep -Fx "$filename" Subset.txt > /dev/null; then
        echo -e "Unlisted file: \e[1;33m$filename\e[0m"
    fi
done
echo "... done."
