#!/usr/bin/perl -w
opendir(D, "in");
foreach(readdir(D)) {
    print "$_\n";
}

use File::Find;
find({wanted=>sub {print "$_ "}}, "in");

# Find with:
# grep -r -e readdir -e File::Find .

# Fix with:
# foreach(sort(readdir(D)))

# find({wanted=>sub {print "$_ "}, preprocess => sub {sort {$a cmp $b} @_}}, "in");
