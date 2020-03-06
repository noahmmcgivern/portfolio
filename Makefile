build:
	rm -rf out
	mkdir -p out
	cp -r assets out
	cp index.html out
	elm make src/Main.elm --output=out/main.js

dev:
	elm reactor
