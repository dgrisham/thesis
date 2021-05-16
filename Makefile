default: build clean

build: thesis.tex
	pdflatex --shell-escape thesis.tex
	bibtex thesis
	pdflatex --shell-escape thesis.tex
	pdflatex --shell-escape thesis.tex

clean:
	rm -f thesis.{aux,blg,GeneralNomenclature,loabbrv,lof,log,los,lot,out,toc}
