#!/bin/bash
# Usage: ./git-compare-file.sh <file>
FILE="$1"

if [[ -z "$FILE" ]]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# Get all local branches
branches=($(git branch --format="%(refname:short)"))

# Use the first branch as reference
ref="${branches[0]}"

echo "Comparing '$FILE' across all branches relative to '$ref'..."

for branch in "${branches[@]}"; do
    if [[ "$branch" == "main" ]]; then continue; fi
    if [[ "$branch" != "$ref" ]]; then
        echo -e "\n--- Diff $ref -> $branch ---"
        git diff "$ref" "$branch" -- "$FILE"
    fi
done
