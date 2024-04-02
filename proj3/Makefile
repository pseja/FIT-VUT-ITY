# Author: xpsejal00
# Date: 2.4.2024
# Description: Makefile for 3rd ITY project

PROJ=proj3

$(PROJ).pdf: $(PROJ).tex
	latex $(PROJ).tex
	latex $(PROJ).tex
	dvips -t a4 $(PROJ).dvi
	ps2pdf -sPAPERSIZE=a4 $(PROJ).ps

clean:
	rm -f $(PROJ).aux $(PROJ).dvi $(PROJ).log $(PROJ).ps $(PROJ).pdf $(PROJ).out $(PROJ).toc

zip:
	zip xpsejal00.zip *.tex *.bib *.eps *.sty Makefile