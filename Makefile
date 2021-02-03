main.pdf: main.tex chapters/*.tex
	pdflatex -interaction=nonstopmode main && \
	makeindex main.nlo -s nomencl.ist -o main.nls && \
  makeindex main && \
	biber main && \
	pdflatex main && \
	makeglossaries main && \
	pdflatex main

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.glg *.glo *.gls *.glsdefs *.idx *.ilg *.ind *.lof *.log *.lot *.mw *.nlo *.nls *.pdf *.run.xml *.toc *.xdy
