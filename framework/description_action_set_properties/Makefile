PAPER = main

export BIBINPUTS=.:../BIBLIO

default:
	#./aaai_script.sh ${PAPER}.tex
	pdflatex $(PAPER).tex
	bibtex --min-crossrefs=99 $(PAPER)
	pdflatex $(PAPER).tex
	pdflatex $(PAPER).tex

tr: 
	pdflatex "\def\trflagdefined{}\input{$(PAPER).tex}" $(PAPER).tex	
	bibtex --min-crossrefs=99 $(PAPER)
	pdflatex "\def\trflagdefined{}\input{$(PAPER).tex}" $(PAPER).tex	
	pdflatex "\def\trflagdefined{}\input{$(PAPER).tex}" $(PAPER).tex

clean:
	rm -f *~ *.aux *.log *.blg *.bbl tmp.tex *.pdf *.fls
