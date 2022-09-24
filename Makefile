main.pdf: main.tex chapters/*.tex
	pdflatex -interaction=nonstopmode main; \
	makeindex main && \
	biber main && \
	pdflatex main && \
	makeglossaries main && \
	pdflatex main

main-kor.pdf: main-kor.tex chapters-kor/*.tex
	xelatex -interaction=nonstopmode main-kor; \
	makeindex main-kor && \
	biber main-kor && \
	xelatex main-kor && \
	makeglossaries main-kor && \
	xelatex main-kor

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.glg *.glo *.gls *.glsdefs *.idx *.ilg *.ind *.lof *.log *.lot *.mw *.nlo *.nls *.pdf *.run.xml *.toc *.xdy
