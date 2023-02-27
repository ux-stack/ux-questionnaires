
_copy:
	@mkdir -p build
	@cp -r src/* build/

.PHONY: clean
clean:
	@rm -rf build

build/%.pdf: src/%.tex
	@cd build/; pdflatex $*.tex

.PHONY: build
build: clean _copy $(patsubst src/%.tex,build/%.pdf,$(wildcard src/*.tex))

preview/%.jpg: build/%.pdf
	@mkdir -p preview
	@pdftoppm -r 300 -scale-to 600 $< | pnmtopng > $(patsubst %.jpg,%-thumb.jpg,$@)
	@pdftoppm -r 300 $< | pnmtopng > $@

.PHONY: preview
preview: $(patsubst build/%.pdf,preview/%.jpg,$(wildcard build/*.pdf))
