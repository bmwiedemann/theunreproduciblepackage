Races or race conditions happen when two processes do something in parallel and sometimes one part can be faster than another part and screw its results.

Races are generic bugs, independent of the goal of reproducible builds, but they can be hard to notice and catch, so they often get found as a side effect when working on reproducible builds.

Seen in the wild in:
* [autogen](https://savannah.gnu.org/support/index.php?109234)
* [intltool](https://bugs.launchpad.net/intltool/+bug/1687644)
* [openSUSE/python-singlespec/setup.py](http://rb.zq1.de/compare.factory-20170428/python-bottle-compare.out) where we generate python2 and python3 packages in one build and if those were done within the same second, python's setup.py would think it is already done and skip the requested install - solved by using `setup.py --force install`
