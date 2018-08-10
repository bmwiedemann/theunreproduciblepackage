See also https://reproducible-builds.org/docs/value-initialization/

[ASLR](https://en.wikipedia.org/wiki/Address_space_layout_randomization)
is controlled under Linux via `/proc/sys/kernel/randomize_va_space`
It will randomize memory addresses and thus pointers
and also initialize certain memory with random values.

ASLR can also be disabled per process using `setarch $(arch) -R make`

But the proper fix for cases like `1.c` is to use `memset` or `bzero`.

## Seen in the wild:
* case 1 (uninitialized padding memory):
  * [LiE](https://github.com/davidsd/lie/pull/1/files)
  * [gcin](https://build.opensuse.org/request/show/520868)
  * [ipadic](https://build.opensuse.org/request/show/540040) http://rb.zq1.de/compare.factory-20170910/ipadic-compare.out

* case 1b (uninitialized memory):
  * [i4l-base](https://build.opensuse.org/request/show/539442)

* case 2 (pointers):
  * http://rb.zq1.de/compare.factory-20170910/python-rtslib-compare.out
  * http://rb.zq1.de/compare.factory-20170910/python-utidy-compare.out
  * http://rb.zq1.de/compare.factory-20170910/ragel-compare.out

* unknown:
  * http://rb.zq1.de/compare.factory-20171011/aegisub-compare.out
  * http://rb.zq1.de/compare.factory-20170910/gnustep-libobjc2-compare.out
  * http://rb.zq1.de/compare.factory-20170910/kdebindings-smokekde-compare.out
  * http://rb.zq1.de/compare.factory-20170910/kdebindings-smokeqt-compare.out
  * http://rb.zq1.de/compare.factory-20170910/ldc-compare.out
  * http://rb.zq1.de/compare.factory-20170910/libkolabxml-compare.out
  * http://rb.zq1.de/compare.factory-20170910/mkvtoolnix-compare.out
  * http://rb.zq1.de/compare.factory-20171011/nodejs6-compare.out
  * http://rb.zq1.de/compare.factory-20170910/perl-MooseX-Role-Cmd-compare.out
  * http://rb.zq1.de/compare.factory-20170910/quantum-espresso-compare.out
