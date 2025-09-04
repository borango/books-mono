PATTERN := [\(|{](\#[\w|-]+).

raw:
	./raw.sh	
	
find_anchors: raw
	
	grep '${PATTERN}' manuscript/*.md -oP --no-filename             | sort -u \
	> _manuscript_anchors.txt
	
	cat _manuscript_anchors.txt | grep '(#'   |         \
	sed 's/[(|{]#\(.*\)[)|}]/\1/'             | sort    \
	> _manuscript_referenced_anchors.txt
	
	cat _manuscript_anchors.txt | grep '{#'   |         \
	sed 's/[(|{]#\(.*\)[)|}]/\1/'             | sort    \
	> _manuscript_defined_anchors.txt
	
	./raw.sh
	grep -oP '\\hypertarget{([\w|-]+)}' *.tex |         \
	sed 's/.*{\(.*\)}/\1/'                    | sort -u \
	> _tex-defined-anchors.txt
	
	
diff_all_versus_explicitly-defined-anchors: find_anchors
	vimdiff _tex-defined-anchors.txt _manuscript_defined_anchors.txt
	
	
diff_defined-anchors_versus_referenced: find_anchors
	vimdiff _tex-defined-anchors.txt _manuscript_referenced_anchors.txt
	
