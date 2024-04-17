PROJ=proj4

$(PROJ): $(PROJ).tex
	latex $(PROJ).tex
	bibtex $(PROJ).aux
	latex $(PROJ).tex
	latex $(PROJ).tex
	dvips -t a4 $(PROJ).dvi
	ps2pdf $(PROJ).ps

clean:
	rm -f $(PROJ).dvi $(PROJ).ps $(PROJ).log $(PROJ).aux $(PROJ).bbl $(PROJ).blg $(PROJ).pdf

zip:
	zip xpsejal00.zip $(PROJ).tex Makefile *.bib *.bst $(PROJ).pdf