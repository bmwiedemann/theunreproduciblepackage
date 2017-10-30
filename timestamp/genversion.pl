#!/usr/bin/perl
open(STDOUT, ">../out/version.h");
print 'BUILD_DATE="'.localtime."\"\n";
