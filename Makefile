all: herbein-cv.pdf

%.pdf: %.tex
	latexmk -outdir=./outdir -pdf -pdflatex="pdflatex -interaction=errorstopmode" $<

clean:
	rm -rf ./outdir
