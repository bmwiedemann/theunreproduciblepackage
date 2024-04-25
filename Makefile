all:
	find -mindepth 1 -type d | sort | xargs -l -IDIR make -k -C DIR
