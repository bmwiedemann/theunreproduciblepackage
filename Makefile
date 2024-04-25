all:
	-find -mindepth 1 -type d | sort | xargs --verbose -IDIR make -k -C DIR

install:
	echo "dummy install: use out/ dir as appropriate"
