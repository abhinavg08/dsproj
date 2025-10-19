TEX=pdflatex
TARGET=report
SRC=main.tex

all: $(TARGET).pdf

$(TARGET).pdf: $(SRC)
	$(TEX) -interaction=nonstopmode -halt-on-error -output-directory . $<
	mv main.pdf $(TARGET).pdf

clean:
	rm -f $(TARGET).pdf *.aux *.log *.out *.toc *.synctex.gz
