all: run

run: genversion
	for s in genversion genversion.[^c]* ; do ./$$s ; done > ../out/version.h

clean:
	rm -f genversion
