all: run

run: 1 2
	for s in 1 ; do ./$$s ; done | od -tx1 > ../out/aslr
	for s in 2 ; do ./$$s ; done >> ../out/aslr

clean:
	rm -f 1 2
