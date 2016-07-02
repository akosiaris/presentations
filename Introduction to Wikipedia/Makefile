# File: Makefile-tex
# Description: A simple template for xelatex compilation.
# Usage: Set TARGET and include this file.

.PHONY: clean distclean

TARGET := wikipedia.pdf

VIEWER := evince # Change this to your prefered viewer, e.g. evince or kpdf.
LATEX := xelatex

all: $(TARGET)

%.pdf: %.tex *.png
	$(LATEX) $<

view: $(TARGET)
	$(VIEWER) $<

clean:
	$(RM) $(basename $(TARGET)).{aux,log,out,toc}

distclean: clean
	$(RM) $(TARGET) $(EXTRA_CLEANS)
