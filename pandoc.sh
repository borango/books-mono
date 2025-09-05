  DOCUMENTCLASS=bogo-tufte-book
if [ "$GITHUB_ACTIONS" = "true" ]; then
  DOCUMENTCLASS=book
fi

# --template=tufte-sidenotes-minimal.tex \
# --number-sections \
# --template=custom.tex \

make pdf

if [ -d    ../mono/dist ]; then
  mv *.pdf ../mono/dist/
fi
