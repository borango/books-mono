cd manuscript


pandoc \
  --template=custom.tex \
  --number-sections \
  --toc \
  --toc-depth=2 \
  -o ../../mono/dist/$(../branch_to_filename.sh)_subset_pd.pdf \
  index.md \
  $(cat Subset.txt)


cd ..
