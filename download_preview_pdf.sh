DL_NAME="$(./get_slug_from_branch.sh)_preview_$1.pdf"

curl \
  -L https://leanpub.com/s/$(< preview_id.txt).pdf \
  > dist/$DL_NAME

xdg-open dist/$DL_NAME
