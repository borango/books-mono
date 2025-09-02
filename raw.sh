#!/bin/bash

cd manuscript

  DOCUMENTCLASS=bogo-tufte-book

if [ "$GITHUB_ACTIONS" = "true" ]; then
  DOCUMENTCLASS=book
fi

pandoc \
  -V documentclass=$DOCUMENTCLASS \
  -V classoption=oneside \
  -V toc=true \
  --toc-depth=1 \
  -V header-includes="\usepackage{etoolbox}\AtBeginDocument{\setlength{\parindent}{0pt}}\hypersetup{colorlinks=false,allbordercolors={0 0 0},pdfborderstyle={/S/U/W 1}}" \
  -o ../$(../branch_to_filename.sh).tex \
  index.md \
  $(cat Subset.txt)


cd ..
