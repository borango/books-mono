#!/bin/bash

pattern='[\(|{](#[\w|-]+).'

# ag $pattern manuscript/*.md -o  --no-filename --nonumbers | sort -u
grep $pattern manuscript/*.md -oP --no-filename             | sort -u \
  > _manuscript_anchors.txt

cat _manuscript_anchors.txt | grep '(#'   |         \
  sed 's/[(|{]#\(.*\)[)|}]/\1/'           | sort    \
  > _manuscript_referenced_anchors.txt

cat _manuscript_anchors.txt | grep '{#'   |         \
  sed 's/[(|{]#\(.*\)[)|}]/\1/'           | sort    \
  > _manuscript_defined_anchors.txt

./raw.sh
grep -oP '\\hypertarget{([\w|-]+)}' *.tex |         \
  sed 's/.*{\(.*\)}/\1/'                  | sort -u \
  > _tex-defined-anchors.txt
