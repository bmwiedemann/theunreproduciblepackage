Races or race conditions happen when two processes do something in parallel and sometimes one part can be faster than another part and screw its results.

Races are generic bugs, independent of the goal of reproducible builds, but they can be hard to notice and catch, so they often get found as a side effect when working on reproducible builds.

Seen in the wild in:
* [autogen](https://savannah.gnu.org/support/index.php?109234)
* [intltool](https://bugs.launchpad.net/intltool/+bug/1687644)
