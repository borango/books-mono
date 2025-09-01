#!/bin/bash
# Usage: ./git-compare-file.sh <file>
FILE="$1"

if [[ -z "$FILE" ]]; then
  echo "Usage: $0 <file>"
  exit 1
fi

# Get all local branches
branches=($(git branch --format="%(refname:short)"))

# Use current branch as reference
ref="$(git rev-parse --abbrev-ref HEAD)"

for branch in "${branches[@]}"; do

  # comparing againt main is a different task, 
  # typically a careful release from development
  if [[ "$branch" == "main" ]]; then continue; fi

  # skip if file does not exist in $branch
  if ! git ls-tree -r "$branch" --name-only | grep -q "^$FILE$"; then
      echo -e "\ndoes not exist in $branch"
      continue
  fi

  if [[ "$branch" != "$ref" ]]; then
      echo -e "\ndiff work against $branch "
      git diff "$branch" -- "$FILE"
  fi
done
