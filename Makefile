all:
	-find -mindepth 1 -type d | sort | xargs --verbose -l -IDIR make -k -C DIR

install:
	echo "dummy install: use out/ dir as appropriate"
