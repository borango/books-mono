TEXFILE = $(shell ./branch_to_filename.sh).tex
PDFFILE = $(shell ./branch_to_filename.sh).pdf

#
# User Targets
#
	
diff_defined_anchors_versus_referenced:     _tex_defined_anchors.txt _manuscript_refrncd_anchors.txt
	@nvim -d                                  _tex_defined_anchors.txt _manuscript_refrncd_anchors.txt

diff_all_versus_explicitly-defined_anchors: _tex_defined_anchors.txt _manuscript_defined_anchors.txt
	@nvim -d                                  _tex_defined_anchors.txt _manuscript_defined_anchors.txt
	
pdf : ${PDFFILE}

#
# implementation
#

DOCUMENTCLASS ?= bogo-tufte-book

DEFINED_PATTERN := {
REFRNCD_PATTERN := (

MANUSCRIPT_ANCHOR_PATTERN := [\${DEFINED_PATTERN}|\${REFRNCD_PATTERN}](\#[\w|-]+).

MANUSCRIPT_FILES := $(wildcard manuscript/*.md) # actually only those in Book.txt + Subset.txt

#
# identical call for PDF book and intermediate LaTeX file 
# (except for the output filename of course)
#
define pandoc_tex_or_pdf
	@echo "rebuilding $@"
	@cd manuscript; \
	pandoc -V documentclass=${DOCUMENTCLASS} -V classoption=oneside -V toc=true --toc-depth=1 -V header-includes="\usepackage{etoolbox}\AtBeginDocument{\setlength{\parindent}{0pt}}\hypersetup{colorlinks=false,allbordercolors={0 0 0},pdfborderstyle={/S/U/W 1}}" -o ../$@ index.md $$(cat Subset.txt)
endef

%.pdf :: ${MANUSCRIPT_FILES} makefile manuscript/Subset.txt; ${pandoc_tex_or_pdf}
%.tex :: ${MANUSCRIPT_FILES} makefile manuscript/Subset.txt; ${pandoc_tex_or_pdf}

#
# intermediate targets
#

_manuscript_anchors.txt : ${MANUSCRIPT_FILES} makefile
	@echo "rebuilding $@"
	@grep '${MANUSCRIPT_ANCHOR_PATTERN}' manuscript/*.md -oP --no-filename | sort -u \
	> $@

define   build_manuscript_anchor_file
	@echo "rebuilding $@"
	@cat _manuscript_anchors.txt | grep '${1}#' | \
	sed 's/[(|{]#\(.*\)[)|}]/\1/' \
	> $@
endef

_manuscript_defined_anchors.txt : _manuscript_anchors.txt
	$(call build_manuscript_anchor_file ,${DEFINED_PATTERN})

_manuscript_refrncd_anchors.txt : _manuscript_anchors.txt
	$(call build_manuscript_anchor_file ,${REFRNCD_PATTERN})


_tex_defined_anchors.txt :             ${TEXFILE}
	@echo "rebuilding $@"
	@grep -oP '\\hypertarget{([\w|-]+)}' ${TEXFILE} |   \
	sed 's/.*{\(.*\)}/\1/'                    | sort -u \
	> $@

#
# test targets
#

all: _tex_defined_anchors.txt _manuscript_defined_anchors.txt        _manuscript_refrncd_anchors.txt

# "git clean" will do, no "make clean" needed
#
