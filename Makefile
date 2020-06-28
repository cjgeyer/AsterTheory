
TEXFILES = macros.tex intro.tex

BIBFILES = tpa.bib

LATEXMK = latexmk

%.tex : %.Rnw
	$(R) CMD Sweave $<

theory.pdf : theory.tex $(TEXFILES) $(BIBFILES)
	$(LATEXMK) -pdf -bibtex $<

