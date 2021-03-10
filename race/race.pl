#!/usr/bin/perl -w
# this behaves more deterministic than bash examples
# but with varying taskset $N, it also has some randomness
use strict;
for(1..5) {
  my $pid = fork();
  if($pid==0){
    print "$_\n";
    exit 0
  }
}
wait();
