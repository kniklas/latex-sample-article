ARTICLE=test
BUILD_FOLDER=build

all:
	mkdir -p $(BUILD_FOLDER)
	pdflatex -output-directory=$(BUILD_FOLDER) -halt-on-erro $(ARTICLE).tex
	biber $(BUILD_FOLDER)/test
	pdflatex -output-directory=$(BUILD_FOLDER) -halt-on-erro $(ARTICLE).tex
	pdflatex -output-directory=$(BUILD_FOLDER) -halt-on-erro $(ARTICLE).tex
clean:
	rm -rfv $(BUILD_FOLDER)/$(ARTICLE).{aux,bbl,bcf,blg,log,run.xml,toc,docx}
convert: 
	pandoc --citeproc $(ARTICLE).tex \
		-o $(BUILD_FOLDER)/$(ARTICLE).docx \
		--bibliography=$(ARTICLE).bib
