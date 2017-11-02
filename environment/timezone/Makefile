all: run
run:
	( date -I ; perl -e 'print scalar localtime,"\n"' ; python -c 'import time; print(time.localtime())' ) > ../../out/environment-implicit-timezone # differs for TZ=UTC-14 and TZ=UTC+12

