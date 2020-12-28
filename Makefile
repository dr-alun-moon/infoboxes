all: infoboxes.sty infoboxes.pdf
doc: infoboxes.pdf
infoboxes.pdf: infoboxes.dtx
	pdflatex -shell-escape infoboxes.dtx
infoboxes.sty: infoboxes.ins infoboxes.dtx
	tex infoboxes.ins
.PHONY: install clean
install: infoboxes.sty
	install infoboxes.sty ${HOME}/texmf/tex/
clean:
	rm -rf infoboxes.aux infoboxes.fdb_latexmk infoboxes.fls infoboxes.glo 
	rm -rf infoboxes.idx infoboxes.ilg infoboxes.ind infoboxes.log 
really-clean: clean
	rm -rf infoboxes.sty infoboxes.pdf
