
.PHONY: build
build: clean
	@mkdir -p build
	@cp src/* build/
	@cd build/; pdflatex sus-fr.tex

.PHONY: clean
clean:
	@rm -rf build
