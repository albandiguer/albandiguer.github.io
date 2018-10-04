all: deps run

new-post:
	bundle exec jekyll post "new post"

deps:
	bundle

run:
	jekyll serve --watch
