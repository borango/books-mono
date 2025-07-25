curl \
  -L https://leanpub.com/s/AB35A37F7B714E129E2B2140F1C9E21C.pdf \
  > dist/preview.pdf

# -z "$(LC_TIME=C; stat -c %y dist/preview.pdf | date -f - -u +'%a, %d %b %Y %T GMT')" \

xdg-open dist/preview.pdf
