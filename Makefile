build: main.tex resume.cls
	pdflatex -jobname=hendry_khoza_resume main.tex
	pdftk hendry_khoza_resume.pdf \
	./docs/graduation_letter.pdf \
	./docs/university_transcript_certified.pdf \
	./docs/matric_results.pdf \
	./docs/id_certified.pdf \
	cat output hendry_khoza_cv.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
	-dNOPAUSE -dQUIET -dBATCH -sOutputFile=hendry_khoza_cv_complete.pdf hendry_khoza_cv.pdf


clean:
	rm -rvf *.aux *.run.xml *.bcf *.pdf *.log *.out
