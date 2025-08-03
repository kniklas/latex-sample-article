# An example LaTeX article with a Makefile

It is a sample LaTeX boilerplate code to write and build PDF file of an article.

Dependencies:
* `pdflatex` with `biblatex` package
* `biber` package, for usage see [documentation](https://en.wikibooks.org/wiki/LaTeX/Bibliographies_with_biblatex_and_biber)
* `pandoc` tool to convert LaTeX to .DOCX see: [jgm/pandoc](https://github.com/jgm/pandoc)

## Makefile examples

* to build a pdf file in a build folder, use `make` command
* to clean a build folder from all files except of the created pdf, use `make clean` command
* to convert LaTeX to .DOCX, use `make convert` command
