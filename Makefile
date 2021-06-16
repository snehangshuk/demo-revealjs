## Put this Makefle in your project directory--i.e., the directory
## containing the paper you are writing. 
## -	You can specify `make slides` to create revealjs presentation
## -	Doing `make clean` will remove the .html file
## 	in your working directory. Make sure you do not have files in these
##	formats that you want to keep!
## Example:
## pandoc -t revealjs --slide-level=2 -s -V revealjs-url=revealjs -V revealjs-menu-url=revealjs-menu -V highlightjs -V menujs -L revealjs-codeblock.lua --template template.html -o index.html slides.md

## All markdown files in the working directory except README.md
SRC=$(filter-out README.md, $(wildcard *.md))

## File paths
TEMPLATES = templates
REVEALJS_TEMPLATE = $(TEMPLATES)/template.html
REVEALJS_SOURCE=revealjs
REVEALJS_MENU_SOURCE=revealjs-menu

## Formats
REVEALJS=-t revealjs -V revealjs-url:$(REVEALJS_SOURCE) --standalone --slide-level 2
HIGHLIGHTJS=-V highlightjs -L revealjs-codeblock.lua
MENUJS=-V revealjs-menu-url=$(REVEALJS_MENU_SOURCE) -V menujs

## Filenames
HTML=$(SRC:.md=.html)

## Functions

clean:
	rm -f $(HTML)

slide: $(HTML)

%.html: %.md
	pandoc $(REVEALJS) $(MENUJS) $(HIGHLIGHTJS) --template=$(REVEALJS_TEMPLATE) -o $@ $<
