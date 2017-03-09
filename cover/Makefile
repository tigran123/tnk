all:	tnk-cover.pdf torah-cover.pdf neviim-cover.pdf kethuvim-cover.pdf

.PHONY:		clean

clean:		
		@rm -f *.{log,aux}

vclean:		clean
		@rm -f *.pdf

%.pdf:	%.tex
	pdflatex $<
