build: main.tex altacv.cls
	pdflatex -jobname=hendry_khoza_resume main.tex
	pdftk hendry_khoza_resume.pdf \
	./docs/ND_computer_system_certificatew.pdf \
	./docs/computer_system_transcript.pdf \
	./docs/matric_results.pdf \
	./docs/id_certified.pdf \
	cat output hendry_khoza_cv.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
	-dNOPAUSE -dQUIET -dBATCH -sOutputFile=hendry_khoza_cv_complete.pdf hendry_khoza_cv.pdf


clean:
	rm -rvf *.aux *.run.xml *.bcf *.pdf *.log *.out
