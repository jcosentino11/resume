SOURCE := source.md
TEMPLATE := template.tex
OUTPUT := resume.pdf

$(OUTPUT): $(SOURCE) $(TEMPLATE)
	@pandoc $(SOURCE) --template=$(TEMPLATE) -o $(OUTPUT)
