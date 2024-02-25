#! /bin/sh
pdftex -ini -jobname="my-preämble" "&pdflatex" mylatexformat.ltx my-preämble.tex
pdflatex test.tex
