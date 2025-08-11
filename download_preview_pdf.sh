DL_NAME="$(./get_slug_from_branch.sh)_preview_$1.pdf"

curl \
  -L https://leanpub.com/s/AB35A37F7B714E129E2B2140F1C9E21C.pdf \
  > dist/$DL_NAME

xdg-open dist/$DL_NAME
