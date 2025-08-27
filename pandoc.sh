cd manuscript


pandoc \
  --template=custom.tex \
  --number-sections \
  --toc \
  --toc-depth=2 \
  -o ../$(../branch_to_filename.sh)_subset_pd.pdf \
  index.md \
  $(cat Subset.txt)


cd ..

if [ -d    ../mono/dist ]; then
  mv *.pdf ../mono/dist/
fi
