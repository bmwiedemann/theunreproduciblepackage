all: run

in:
	mkdir in
	for c in A B C D E F G H I J K L M N O P Q R S T U V W X Y Z; do \
		touch in/$${c}-file; \
	done

run: in
	cp in/[A-Z]* ../../out/

clean:
	$(RM) -rf in/

.PHONY: all run clean
