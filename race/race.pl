#!/usr/bin/perl -w
# this behaves more deterministic than bash examples
# but with varying taskset $N, it also has some randomness
use strict;
open (OUT, ">", "../out/race.pl.out");
for(1..5) {
  my $pid = fork();
  if($pid==0){
    print OUT "$_\n";
    print "$_\n";
    exit 0
  }
}
wait();
