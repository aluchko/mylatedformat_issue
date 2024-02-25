#! /bin/sh
pdftex -ini -jobname="my-preamble" "&pdflatex" mylatexformat.ltx my-preamble.tex
pdflatex test.tex

