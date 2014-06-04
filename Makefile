PX=pdflatex
BX=bibtex

default: main.tex refs.bib
	$(PX) main.tex
	$(BX) main.tex
	$(PX) main.tex
	$(PX) main.tex

clean:
	rm -f main.aux main.lof main.log main.lot main.out main.pdf main.toc

publish: main.pdf
	cp main.pdf /External/School/
