# K souboru: proj2.tex
# Datum:    20.3.2024
# Autor:    Lukas Pseja (xpsejal00)
# Projekt:  ITY projekt 2

PROJ=proj2

$(PROJ).pdf: $(PROJ).tex
	pdflatex $(PROJ).tex
	pdflatex $(PROJ).tex

clean:
	rm -f $(PROJ).aux $(PROJ).dvi $(PROJ).log $(PROJ).ps $(PROJ).out

clean-all: clean
	rm -f $(PROJ).pdf
