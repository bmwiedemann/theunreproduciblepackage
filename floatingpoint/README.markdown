A few cases have been observed in the wild, where build results
depended on the CPU type, because floating point operations
would yield different accuracy.

This might also produce deviations between i586 and x86\_64 builds.

In some of these cases the goal of reproducibility may conflict with performance or accuracy.

# Seen in the wild:

* [fluidsynth](https://github.com/FluidSynth/fluidsynth/pull/512) fused-multiply-add used in glibc-2.29 pow if available

* [calibre](https://github.com/kovidgoyal/calibre/blob/fab8c8f2d4d8c0c1b2046c2fbfd204189191c4c5/src/calibre/linux.py#L1171) `.png` files vary from SSE4.1 ?

* [piglit](https://rb.zq1.de/compare.factory-20181023/piglit-compare.out) - already fixed?
