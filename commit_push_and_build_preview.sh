git commit -am "$*"

git push

# webhook on GitHub will trigger the Leanpub "preview" build
# ... NOT 
# (currently disabled so that author has control over build details, such as subset or full, or publish)

./trigger_preview.sh subset

# triggering preview script (before) also downloads
# ./status_and_download.sh

