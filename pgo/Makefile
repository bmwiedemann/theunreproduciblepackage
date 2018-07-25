all: run

run:
	rm -f *.gcda
	make -B build CFLAGS="-O3 -fprofile-generate"
	make profile
	make clean
	make build CFLAGS="-O3 -fprofile-use -Wall"
	cp -a pgo ../out/

profile:
	mkpasswd $$RANDOM | ./pgo || :

build: pgo
clean:
	rm -f pgo
