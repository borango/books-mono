#!/bin/bash

LocalGitBranch=$(git rev-parse --abbrev-ref HEAD | sed 's/\//_/g')

GitHubActionBranch=${GITHUB_REF##refs/heads/}

branch=${GitHubActionBranch:-$LocalGitBranch}

result=${branch//\//_}
echo "$result"
