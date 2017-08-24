zip:
	rm -f qa-technical-test.zip
	find . -name *~ -exec rm {} \;
	zip -r qa-technical-test.zip . -x *.git*
	