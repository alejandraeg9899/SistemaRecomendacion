#! /bin/bash
cd doc/
pdflatex Recomendadores.tex > /dev/null
mv Recomendadores.pdf ../
rm *.log
rm *.aux
cd ..
open Recomendadores.pdf
