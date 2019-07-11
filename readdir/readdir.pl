#!/usr/bin/perl -w
opendir(D, "in");
foreach(readdir(D)) {
    print "$_\n";
}

# Find with:
# grep -r readdir .

# Fix with:
# foreach(sort(readdir(D)))
