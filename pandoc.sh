cd manuscript


pandoc \
  --template=custom.tex \
  --toc \
  -o ../../mono/dist/$(../branch_to_filename.sh)_subset_pd.pdf \
  index.md \
  $(cat Subset.txt)


cd ..
