There are multiple valid approaches to fixing timestamps
that end up in build results

1) if it is not required, it might be possible to drop it completely, but be careful when discussing with upstream maintainers as some have strong opinions here.

2) if it is meant to show the date, age or version of the software, such as with the date on top of a man-page, it is possible to use the modification time of the ChangeLog file instead, that remains constant for release tarballs and git snapshots, but can be easily updated for other cases (e.g. debug builds) - in bash `date -r ChangeLog` does that trick - sometimes with relative path, if called in a subdir.

Also for file format converters, using the modification time of the input file(s) can give a meaningful result, except if those inputs are also generated during a package build.

3) use the [`SOURCE_DATE_EPOCH`](https://wiki.debian.org/ReproducibleBuilds/TimestampsProposal) environment variable. Templates for most languages already exist to ease adoption. For C and shell patches can be a bit complex, though.
