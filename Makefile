doc=thesis
LATEX=pdflatex
BIBTEX=bibtex

default:
	$(LATEX) $(doc).tex
	$(BIBTEX) $(doc)
	$(LATEX) $(doc).tex

clean:
	-rm -f $(doc).{aux,log,nav,out,snm,toc,vrb,bbl,blg}
	-rm -f chapters/*.{aux,log,nav,out,snm,toc,vrb,bbl,blg}
	-rm -f ./*~

clobber: clean
	-rm -f ./*.pdf
