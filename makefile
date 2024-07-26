CC=xelatex

main.pdf: main.tex cv.cls
	$(CC) main.tex
	rm -f *.aux
	rm -f *.log
	rm -f *.out

.PHONY: clean
clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f *.dvi
	rm main.pdf
