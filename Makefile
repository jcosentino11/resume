BUILD_DIR = build
RESUME = $(BUILD_DIR)/resume.pdf
SOURCE = resume.tex

.PHONY: all
all: $(RESUME)

$(RESUME): $(SOURCE)
	@mkdir -p $(BUILD_DIR)
	@cd $(BUILD_DIR) && pdflatex ./../$(SOURCE)
	@ispell $(SOURCE)

.PHONY: clean
clean:
	@rm -rf $(BUILD_DIR)

.PHONY: release
release: $(RESUME)
	@./release.sh

.PHONY: deps
deps:
	@brew install mactex gh ispell
