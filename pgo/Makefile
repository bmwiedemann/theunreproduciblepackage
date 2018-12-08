all: run

run:
	rm -f *.gcda
	make -B build CFLAGS="-O3 -fprofile-generate"
	make profile
	make clean
	make build CFLAGS="-O3 -fprofile-use -Wall"
	cp -a pgo ../out/

profile:
	bash -c 'echo $$RANDOM' | ./pgo || :

build: pgo
clean:
	rm -f pgo

runmany:
	for i in $$(seq 100) ; do \
	    make run >/dev/null 2>&1 ;\
	    md5sum pgo ;\
	done | sort | uniq -c
