
TEXFILES = macros.tex intro.tex complete.tex \
    factorize.tex markov.tex regular.tex notation.tex

BIBFILES = tpa.bib

LATEXMK = latexmk

%.tex : %.Rnw
	$(R) CMD Sweave $<

theory.pdf : theory.tex $(TEXFILES) $(BIBFILES)
	$(LATEXMK) -pdf -bibtex $<

