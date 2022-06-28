.PHONY: deploy

_site: *.md _layouts
	bundle exec jekyll build

deploy: _site
	bundle exec jekyll build
	rsync -avp --delete _site/ severin@giesing.munichmakes.de:/data/makervan/wiki_static/htdocs/
