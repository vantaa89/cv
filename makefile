CC=xelatex

cv_kor.pdf: cv_kor.tex cv.cls
	$(CC) cv_kor.tex
	rm -f *.aux
	rm -f *.log
	rm -f *.out

main.pdf: main.tex cv.cls
	$(CC) main.tex
	rm -f *.aux
	rm -f *.log
	rm -f *.out

clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.out