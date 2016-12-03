TEXFILE = slide.tex
PDFFILE = slide.pdf
HEADER = header.tex
META = metadata.yaml
SOURCE = slide.md
BIBLIO = bibliography.bib

.PHONY: all clean

all: slide.pdf

$(TEXFILE): $(META) $(SOURCE) $(HEADER) $(BIBLIO)
	pandoc -H $(HEADER) -f markdown -t beamer --biblatex -s -o $(TEXFILE) $(META) $(SOURCE)

$(PDFFILE): $(TEXFILE) $(BIBLIO)
	latexmk -pdf slide

clean:
	-@rm -f $(TEXFILE) $(PDFFILE) slide.{aux,bbl,blg,dvi,fdb_latexmk,fls,log,nav,out,snm,toc,bcf,run.xml,synctex.gz}
	-@latexmk -C
