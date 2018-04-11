all: rapport.html

run: all
	firefox rapport.html

.SUFFIXES: .html .adoc
.adoc.html:
	asciidoc -a asciimath -b html5 $<

.PHONY: clean
clean:
	rm -f rapport.html
