#!/usr/bin/perl
use strict;
my %hash;
for (1..10) {
    $hash{"key$_"} = "value$_";
}

foreach(keys(%hash)) {
    print "$_ => $hash{$_}\n";
}
print "---\n";
# using an iterator
while(my @e=each(%hash)) {
    print "$e[0] => $e[1]\n";
}
