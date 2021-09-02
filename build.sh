#!/bin/bash
#

slidedecks=("c.1-cerebrate-internal c.2-cerebrate-code-review c.5-integration-layer")
mkdir output
export TEXINPUTS=::`pwd`/themes/
echo ${TEXINPUTS}
for slide in ${slidedecks[@]}; do
        cd ${slide}
        pdflatex slide.tex
        pdflatex slide.tex
        rm *.aux *.toc *.snm *.log *.out *.nav *.vrb
        cp slide.pdf ../output/${slide}.pdf
        rm slide.pdf
        cd ..
done


