cd manuscript

# --template=tufte-sidenotes-minimal.tex \
# --number-sections \
# --template=custom.tex \

pandoc \
  -V documentclass=tufte-book \
  -V classoption=oneside \
  -V toc=true \
  --toc-depth=1 \
  -o ../$(../branch_to_filename.sh)_subset_pd.pdf \
  index.md \
  $(cat Subset.txt)


cd ..

if [ -d    ../mono/dist ]; then
  mv *.pdf ../mono/dist/
fi
