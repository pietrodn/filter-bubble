TARGET = slide.tex
HEADER = header.tex
META = metadata.yaml
SOURCE = slide.md
BIBLIO = bibliography.bib

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(META) $(SOURCE) $(HEADER) $(BIBLIO)
	pandoc -H $(HEADER) -f markdown -t beamer --biblatex -s -o $(TARGET) $(META) $(SOURCE)
	latexmk -pdf slide

clean:
	-@rm -f $(TARGET) slide.{aux,bbl,blg,dvi,fdb_latexmk,fls,log,nav,out,snm,toc,bcf,run.xml,synctex.gz}
	-@latexmk -C
