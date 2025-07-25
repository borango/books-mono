./get_status.sh
if [ $? -ne 0 ]; then
    echo "build failed, skipping download"
    exit 1
fi
./download_preview_pdf.sh
