#!/bin/sh
tmp=pidtmpfilename$$.c
cp -a dummy.c $tmp
gcc $tmp -o ../out/pidfromgcc
rm -f $tmp
