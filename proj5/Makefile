PROJ=proj5

$(PROJ).pdf: $(PROJ).tex
	pdflatex $<
	pdflatex $<

clean:
	rm -f xpsejal00.zip $(PROJ).aux $(PROJ).log $(PROJ).out $(PROJ).pdf $(PROJ).toc $(PROJ).nav $(PROJ).snm $(PROJ).vrb $(PROJ).pyg $(PROJ).fls $(PROJ).fdb_latexmk $(PROJ).synctex.gz

zip:
	zip -r xpsejal00.zip Makefile $(PROJ).tex beamer* fitthesispresn.cls img/