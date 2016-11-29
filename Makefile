TARGET = slide.pdf
HEADER = header.tex
META = metadata.yaml
SOURCE = slide.md

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(META) $(SOURCE) $(HEADER)
	pandoc -H $(HEADER) -f markdown -t beamer -s -o $(TARGET) $(META) $(SOURCE)

clean:
	-@rm -f $(TARGET)
