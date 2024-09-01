all: html

html: clean
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"

clean:
	rm -rf docs/
	mkdir docs
	touch docs/.nojekyll
