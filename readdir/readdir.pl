#!/usr/bin/perl -w
opendir(D, "in");
foreach(readdir(D)) {
    print "$_\n";
}
