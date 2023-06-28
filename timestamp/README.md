See also https://reproducible-builds.org/docs/timestamps/

There are multiple valid approaches to fixing timestamps
that end up in build results

1) if it is not required, it might be possible to drop it completely, but be careful when discussing with upstream maintainers as some have strong opinions here.

2) if it is meant to show the date, age or version of the software, such as with the date on top of a man-page, it is possible to use the modification time of the ChangeLog file instead: that remains constant for release tarballs and git snapshots, but can be easily updated for other cases (e.g. debug builds). There is no portable shell command syntax for this, but on some systems (at least FreeBSD and Linux), `date -r ChangeLog` does the trick. 
 
Also for file format converters, using the modification time of the input file(s) can give a meaningful result, except if those inputs are also generated during a package build.

3) use the [`SOURCE_DATE_EPOCH`](https://wiki.debian.org/ReproducibleBuilds/TimestampsProposal) environment variable. Templates for most languages already exist to ease adoption. For C and shell patches can be a bit complex, though.

Seen in the wild:
* https://github.com/cea-hpc/robinhood/pull/83/files shell
* https://github.com/SawfishWM/sawfish/pull/29/files shell
* https://sourceforge.net/p/shorewall/mailman/message/35956407/ shell
* https://github.com/Gnucash/gnucash/pull/180/files shell mtime
* https://gerrit.gromacs.org/#/c/6896/ cmake
* https://github.com/votca/csg/pull/228/files cmake
* https://github.com/magefile/mage/pull/474/files golang
* https://github.com/marshmallow-code/marshmallow/pull/679/files python
* https://debbugs.gnu.org/cgi/bugreport.cgi?bug=27773 perl
* https://github.com/ruby/rdoc/pull/570/files ruby
* https://github.com/AlephAlpha/build-time/pull/5/files rust
* https://github.com/ellson/graphviz/pull/1253/files TCL
