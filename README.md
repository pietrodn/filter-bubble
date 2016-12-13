# The Filter Bubble: a threat for plural information?

Slides for the [Computer Ethics](http://home.deib.polimi.it/schiaffo/CE/) course at Politecnico di Milano.

You can **[download the PDF](https://github.com/pietrodn/filter-bubble/raw/master/slide.pdf)** of my slides.

## How these slides were made

The slides are written in Markdown and compiled into LaTeX with [Pandoc](http://pandoc.org/).
Then they are compiled from LaTeX into PDF using [`latexmk`](https://www.ctan.org/pkg/latexmk/).

* The Markdown source of the slides is in [slide.md](slide.md).
* The bibliography is in [bibliography.bib](bibliography.bib).

## How to build the project

### Requirements

* Pandoc
* A full installation of LaTeX
* BibLaTeX
* latexmk

### Compilation

Just run the [Makefile](Makefile):

    make

## License

This project is licensed under the [Creative Commons Attribution 4.0 International](LICENSE.txt) license.
