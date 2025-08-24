cd manuscript

pandoc \
  --toc \
  -o ../../mono/dist/$(../branch_to_filename.sh)_subset_pd.pdf \
  index.md $(cat Subset.txt)

#pandoc \
#--toc \
#-o                 $(../branch_to_filename.sh)_subset_pd.html \
#$(cat Subset.txt)

cd ..
