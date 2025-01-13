SOURCE := source.md
TEMPLATE := template.tex

BUILD_DIR := build
OUTPUT_PDF := $(BUILD_DIR)/resume.pdf
RELEASE_PDF := resume.pdf

.PHONY: all clean release

all: $(OUTPUT_PDF)

$(OUTPUT_PDF): $(SOURCE) $(TEMPLATE) | $(BUILD_DIR)
	@pandoc $(SOURCE) --template=$(TEMPLATE) -o $(OUTPUT_PDF)

$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)

clean:
	@rm -rf $(BUILD_DIR)

release: $(OUTPUT_PDF)
	@if [ -n "$$(git status --porcelain)" ]; then \
		echo "Error: There are uncommitted changes. Please commit or stash them first."; \
		exit 1; \
	fi
	@cp $(OUTPUT_PDF) $(RELEASE_PDF)
	@git add $(RELEASE_PDF)
	@git commit -m "Release: Update resume.pdf"
	@git push origin main
