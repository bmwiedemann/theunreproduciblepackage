all: run
run:
	( date -I ; perl -e 'print scalar localtime,"\n"' ; python3 -c 'import time; print(time.localtime())' ) > ../../out/environment-implicit-timezone # differs for TZ=UTC-14 and TZ=UTC+12

