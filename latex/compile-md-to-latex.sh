#!/bin/bash
# compile markdown input to latex
pandoc -f markdown -t latex -o compiled.tex "$1"
# replace sections with chapters
sed -i 's/\\section{C. /\\chapter{/g' compiled.tex

