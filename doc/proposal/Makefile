# Compile 

FILE=report

CP=/bin/cp
MAKE=/usr/bin/make
MV=/bin/mv
RM=/bin/rm
TOUCH=/usr/bin/touch

PDFLATEX=pdflatex -interaction nonstopmode
BIBTEX=bibtex
MAKEIDX=makeindex

all: build clean

clean:
	@${TOUCH} ${FILE}.pdf
	@${MV} ${FILE}.pdf ${FILE}.org.pdf
	@${MAKE} -f ../latex-makefile clean
	@${MV} ${FILE}.org.pdf ${FILE}.pdf

build: 
	@${MAKE} -f ../latex-makefile ${FILE}
