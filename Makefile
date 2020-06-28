
R = R

RHOME = $(shell $(R) RHOME)

export TEXINPUTS = .:$(RHOME)/share/texmf/tex/latex:

TEXFILES = macros.tex intro.tex

BIBFILES = tpa.bib

LATEXMK = latexmk

%.tex : %.Rnw
	$(R) CMD Sweave $<

theory.pdf : theory.tex $(TEXFILES) $(BIBFILES)
	$(LATEXMK) -pdf -bibtex $<

