PX=latex
BX=bibtex
DP=dvipdf

default: main.tex refs.bib
	$(PX) main.tex
	$(BX) main
	$(PX) main.tex
	$(PX) main.tex
	$(DP) main.dvi

clean:
	rm -f main.aux main.lof main.log main.lot main.out main.pdf main.toc main.bbl main.blg main.dvi

publish: main.pdf
	cp main.pdf /External/School/
