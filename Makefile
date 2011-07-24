# Copies files from src/ to dst/. Any .html files are
# interpreted by GNU m4 and wrapped in a the GNU m4
# template. Common m4 macros may be stored in a macros
# file.

MACROS   := macros.m4
TEMPLATE := template.html.m4
SRC      := src
DST      := dst

# Build a list of all the files that should exist when the
# baking is done. We do this by getting a list of all the
# source files and replacing pathnames and file suffixes as
# necessary.
targets  := $(shell find $(SRC) -type f)
targets  := $(targets:$(SRC)/%=$(DST)/%)
targets  := $(targets:.m4=)
targets  := $(filter-out %.inc %.swp,$(targets))
targets  := $(targets:.md=.html)

all: $(targets)

# Any files named '*.html.m4' will be interpreted by M4
# with the macros available, wrapped and output to the
# destination with the .m4 suffix removed.
$(SRC)/%.html: $(SRC)/%.html.m4 $(MACROS) $(TEMPLATE)
	# Baking $< into $@
	m4 -P $(MACROS) $< $(TEMPLATE) > $@

# How about markdown? This idea can be extended to support
# many different pre- and post-processing tools. I think
# pandoc is the best markdown tool out there, so here's one
# way to wire it in to run *before* m4. GNU Make is even
# smart enough to clean up the intermediate file created by
# this step.
$(SRC)/%.html.m4: $(SRC)/%.md.m4 $(MACROS) $(TEMPLATE)
	# Rendering $< to $@ with pandoc
	pandoc -f markdown -t html -o $@ $<

# Any files named '*.m4' will be interpreted by M4 with the
# macros available, and output to the destination with the
# .m4 suffix removed.
$(SRC)/%: $(SRC)/%.m4 $(MACROS)
	# Baking $< into $@
	m4 -P $(MACROS) $< > $@

# Any files not matched by rules above will be copied
# verbatim to the destination.
$(DST)/%: $(SRC)/%
	# Copying $< to $@
	install -m 644 -D $< $@

# By default, GNU Make will skip any source files that have
# not been modified since the last time they were rendered.
# Run 'make clean' to erase the destination directory for a
# complete rebuild.
clean:
	# deleting $(DST)/
	mv $(DST) .old_dst
	rm -rf .old_dst
