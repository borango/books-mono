cd manuscript

  DOCUMENTCLASS=bogo-tufte-book

if [ "$GITHUB_ACTIONS" = "true" ]; then
  DOCUMENTCLASS=book
fi

# --template=tufte-sidenotes-minimal.tex \
# --number-sections \
# --template=custom.tex \

pandoc \
  -V documentclass=$DOCUMENTCLASS \
  -V classoption=oneside \
  -V toc=true \
  --toc-depth=1 \
  -V header-includes="\usepackage{etoolbox}\AtBeginDocument{\setlength{\parindent}{0pt}}\hypersetup{colorlinks=false,allbordercolors={0 0 0},pdfborderstyle={/S/U/W 1}}" \
  -o ../$(../branch_to_filename.sh)_subset_pd.pdf \
  index.md \
  $(cat Subset.txt)


cd ..

if [ -d    ../mono/dist ]; then
  mv *.pdf ../mono/dist/
fi
