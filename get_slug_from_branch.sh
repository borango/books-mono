#!/bin/bash
# get the slug from the current Git branch name

git rev-parse --abbrev-ref HEAD \
| sed 's/\/.*//g'
