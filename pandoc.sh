if [ "$GITHUB_ACTIONS" = "true" ]; then
  export DOCUMENTCLASS=book
fi

# --template=tufte-sidenotes-minimal.tex \
# --number-sections \
# --template=custom.tex \

make pdf

if [ -d    ../mono/dist ]; then
  cp *.pdf ../mono/dist/
fi
