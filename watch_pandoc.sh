while inotifywait -e close_write manuscript/*.md; do ./pandoc.sh ; done
