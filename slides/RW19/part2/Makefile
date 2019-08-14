SLIDES="slides"
PREHANDOUT="pre-handout"
PREHANDOUTFOUR="pre-handout-4up"
POSTHANDOUT="post-handout"
POSTHANDOUTFOUR="post-handout-4up"

export BIBINPUTS=../../../papers/BIBLIO

slides: 
	pdflatex $(SLIDES)
	bibtex $(SLIDES) --min-crossrefs=99
	pdflatex $(SLIDES)
	pdflatex $(SLIDES)
	rm *~ *.bbl *.log *.nav *.out *.snm *.toc *.aux *.blg

pre: 
	pdflatex $(PREHANDOUT)
	bibtex $(PREHANDOUT) --min-crossrefs=99
	pdflatex $(PREHANDOUT)
	pdflatex $(PREHANDOUT)
	rm *~ *.bbl *.log *.nav *.out *.snm *.toc *.aux *.blg

prefour: 
	pdflatex $(PREHANDOUTFOUR)
	bibtex $(PREHANDOUTFOUR) --min-crossrefs=99
	pdflatex $(PREHANDOUTFOUR)
	pdflatex $(PREHANDOUTFOUR)
	rm *~ *.bbl *.log *.nav *.out *.snm *.toc *.aux *.blg

post: 
	pdflatex $(POSTHANDOUT)
	bibtex $(POSTHANDOUT) --min-crossrefs=99
	pdflatex $(POSTHANDOUT)
	pdflatex $(POSTHANDOUT)
	rm *~ *.bbl *.log *.nav *.out *.snm *.toc *.aux *.blg

postfour: 
	pdflatex $(POSTHANDOUTFOUR)
	bibtex $(POSTHANDOUTFOUR) --min-crossrefs=99
	pdflatex $(POSTHANDOUTFOUR)
	pdflatex $(POSTHANDOUTFOUR)
	rm *~ *.bbl *.log *.nav *.out *.snm *.toc *.aux *.blg

clean:
	rm *~ *.pdf *.bbl *.log *.nav *.out *.snm *.toc *.aux *.blg
