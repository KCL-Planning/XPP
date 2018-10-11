PAPER = main

default:
	pdflatex $(PAPER).tex	
	bibtex --min-crossrefs=99 $(PAPER)
	pdflatex $(PAPER).tex	
	pdflatex $(PAPER).tex

clean:
	rm -f *~ *.aux *.log *.blg *.bbl tmp.tex
