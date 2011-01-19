pdf:main.tex \
    introduction.tex \
    current_state.tex \
	proposed_research.tex \
	biblio.bib
	pdflatex main.tex 
	-bibtex main
	pdflatex main.tex 
	pdflatex main.tex 
eps: main.tex \
    introduction.tex \
    current_state.tex \
	proposed_research.tex \
	biblio.bib
	latex main.tex 
	-bibtex main
	latex main.tex 
	latex main.tex 
.PHONY: clean
clean:
	-rm *.log *.aux *.bbl *.blg 
	-rm main.pdf main.dvi
