TARGET = slide.pdf
HEADER = header.tex
META = metadata.yaml
SOURCE = slide.md
BIBLIO = bibliography.bib

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(META) $(SOURCE) $(HEADER) $(BIBLIO)
	pandoc -H $(HEADER) -f markdown -t beamer --filter pandoc-citeproc -s -o $(TARGET) $(META) $(SOURCE)

clean:
	-@rm -f $(TARGET)
