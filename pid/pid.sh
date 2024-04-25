#!/bin/sh
tmp=pidtmpfilename$$.c
cp -a dummy.c $tmp
gcc $tmp -o ../out/pidfromgcc
rm -f $tmp

# https://reproducible-builds.org/docs/archives/
tar c pid.sh > ../out/pidfrom.tar # POSIX PaX headers have a PID by default
