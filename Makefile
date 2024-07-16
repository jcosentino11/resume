.PHONY: build
build:
	@mkdir -p build && cd build && pdflatex ./../resume.tex

.PHONY: clean
clean:
	@rm -rf build

.PHONY: install
install:
	@brew install mactex gh

.PHONY: release
release: build
	@./release.sh
