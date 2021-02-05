all:
	find -mindepth 1 -type d | xargs -l -IDIR make -k -C DIR
