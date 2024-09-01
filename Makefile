all: html

html:
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"

clean:
	rm -rf public/
	mkdir public
	touch public/.nojekyll
