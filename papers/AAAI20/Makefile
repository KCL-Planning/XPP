PAPER = main

export BIBINPUTS=.:../BIBLIO

default:
#	./aaai_script.sh ${PAPER}.tex
	pdflatex $(PAPER).tex
	bibtex --min-crossrefs=99 $(PAPER)
	pdflatex $(PAPER).tex
	pdflatex $(PAPER).tex

noc: 
	pdflatex "\def\nocflagdefined{}\input{$(PAPER).tex}" $(PAPER).tex	
	bibtex --min-crossrefs=99 $(PAPER)
	pdflatex "\def\nocflagdefined{}\input{$(PAPER).tex}" $(PAPER).tex	
	pdflatex "\def\nocflagdefined{}\input{$(PAPER).tex}" $(PAPER).tex

supp: 
	pdflatex "\def\suppflagdefined{}\def\nocflagdefined{}\input{$(PAPER).tex}" $(PAPER).tex	
	bibtex --min-crossrefs=99 $(PAPER)
	pdflatex "\def\suppflagdefined{}\def\nocflagdefined{}\input{$(PAPER).tex}" $(PAPER).tex	
	pdflatex "\def\suppflagdefined{}\def\nocflagdefined{}\input{$(PAPER).tex}" $(PAPER).tex

clean:
	rm -f *~ *.aux *.log *.blg *.bbl tmp.tex *.pdf *.fls
