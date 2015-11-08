#! /bin/bash
cd doc/
pdflatex Recomendadores.tex > /dev/null
pdflatex Recomendadores.tex > /dev/null
mv Recomendadores.pdf ../
rm *.log
rm *.aux
cd ..
open -F  Recomendadores.pdf
