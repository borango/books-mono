git commit -am "$*"
git push
./get_status.sh
./get_preview_pdf.sh
