all: prep run

prep:
	mkdir -p in
	for i in $$(seq 10) ; do touch in/$$i ; done

run:
	for s in readdir.* ; do ./$$s ; done > ../out/readdir.filelist
