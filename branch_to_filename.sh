#!/bin/bash

git rev-parse --abbrev-ref HEAD \
| sed 's/\//_/g'
