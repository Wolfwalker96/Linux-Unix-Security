
OUTPUTDIR = out
TMPDIR = tmp

all: book slide

${TMPDIR} :
	@-mkdir -p $(TMPDIR)

${OUTPUTDIR} :
	@-mkdir -p $(OUTPUTDIR)

slide : ${OUTPUTDIR}
	@-pandoc -s -t beamer meta.md summary.md */README.md -o $(OUTPUTDIR)/slides.pdf

book : ${OUTPUTDIR}
	@-pandoc -s meta.md */README.md -o $(OUTPUTDIR)/book.pdf --toc

clean: 
	-@-rm -r $(OUTPUTDIR) $(TMPDIR) 2>/dev/null || true
