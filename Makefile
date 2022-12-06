.DEFAULT_GOAL := all
.PHONY: all texclean

all: render texclean
	@echo DONE

render:
	Rscript -e "rmarkdown::render(\"talk.Rmd\")"

texclean:
	-rm *.log *.html *.aux *.vrb *.toc *.snm *.nav *.out
