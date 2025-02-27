pdflatex zaverecna_prace.tex
biber zaverecna_prace
pdflatex zaverecna_prace.tex
pdflatex zaverecna_prace.tex

rpm -qa | grep texlive | awk -F- '{print $1 "-" $2}' | sort | uniq | xargs echo sudo dnf install -y > texlive-install.txt

latexmk -pdf -quiet -c zaverecna_prace.tex
