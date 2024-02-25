#! /bin/sh
pdftex -ini -jobname="my-preamble" "&pdflatex" my-preamble.tex
pdflatex test_nonäscii.tex
