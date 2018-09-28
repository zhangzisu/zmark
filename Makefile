all:
	@cp lib/zmark.js zmark.js
	@uglifyjs --comments '/\*[^\0]+?Copyright[^\0]+?\*/' -o zmark.min.js lib/zmark.js

clean:
	@rm zmark.js
	@rm zmark.min.js

bench:
	@node test --bench

man/zmark.1.txt:
	groff -man -Tascii man/zmark.1 | col -b > man/zmark.1.txt

.PHONY: clean all
