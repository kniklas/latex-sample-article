.SILENT:

ARTICLE=test
BUILD_FOLDER=build

all:
	echo "Building LaTeX document and PDF file..."
	mkdir -p $(BUILD_FOLDER)
	pdflatex -output-directory=$(BUILD_FOLDER) -halt-on-erro $(ARTICLE).tex
	biber $(BUILD_FOLDER)/$(ARTICLE)
	pdflatex -output-directory=$(BUILD_FOLDER) -halt-on-erro $(ARTICLE).tex
	pdflatex -output-directory=$(BUILD_FOLDER) -halt-on-erro $(ARTICLE).tex
clean:
	echo "Removing latex auxiliary files..."
	find $(BUILD_FOLDER) -type f \! -name "*.pdf" \! -name "*.docx" -exec rm -v {} +
convert: 
	echo "Converting to docx..."
	pandoc --citeproc $(ARTICLE).tex \
		-o $(BUILD_FOLDER)/$(ARTICLE).docx \
		--bibliography=$(ARTICLE).bib
