#!/bin/bash

if [ ! -d highres ]; then
  echo "Error: 'highres' directory not found"
  exit 1
fi

mkdir -p 160_res

find highres -type f \( -iname "*.png" -o -iname "*.jpg" \) -exec sh -c '
  output="160_res/$(basename "{}")"
  if [ ! -f "$output" ]; then
    echo "Converting {} to $output"
    convert "{}" -resize 160x "$output"
  else
    echo "Skipping $output (already exists)"
  fi
' \;
