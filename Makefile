all:
	echo "hi"

push:
	npm update -g @fission-ai/openspec
	openspec init --tools claude .
	git add .
	git commit -m "generated files on `date +'%Y-%m-%d'`";
	git push --force-with-lease
