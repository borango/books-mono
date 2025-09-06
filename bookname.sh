#!/bin/bash

LocalGitBranch=$(git rev-parse --abbrev-ref HEAD | sed 's/\//_/g')

GitHubActionBranch=${GITHUB_REF##refs/heads/}

branch=${GitHubActionBranch:-$LocalGitBranch}

result=${branch//\//_}

if [ -e manuscript/Subset.txt ]; then result=${result}_subset; fi

echo "$result"
