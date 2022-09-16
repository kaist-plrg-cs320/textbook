main.pdf: main.tex chapters/*.tex
	xelatex -interaction=nonstopmode main; \
	makeindex main && \
	biber main && \
	xelatex main && \
	makeglossaries main && \
	xelatex main

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.glg *.glo *.gls *.glsdefs *.idx *.ilg *.ind *.lof *.log *.lot *.mw *.nlo *.nls *.pdf *.run.xml *.toc *.xdy
