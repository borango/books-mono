git commit -am "$*"

git push

# webhook on GitHub will trigger the Leanpub "preview" build

./status_and_download.sh
