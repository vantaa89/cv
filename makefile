CC=xelatex

main.pdf: main.tex cv.cls
	$(CC) main.tex
	rm -f *.aux
	rm -f *.log
	rm -f *.out

clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.out