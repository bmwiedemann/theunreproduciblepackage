Profile Guided Optimization (PGO)
is a feature found in gcc and maybe other compilers.

With PGO, a build happens in several stages:
1. the software is built with extra code for profile generation
2. the software is run and profile information (e.g. counters of calls that are independent of system performance) recorded in .gcda files
3. the software is built again using the information from .gcda files for optimization

This will create unreproducible binaries, unless all inputs in step 2 are constant.

Possible solutions:
* use constant input in step 2 (see gzip and libsamplerate below)
* remove .gcda files that differ across builds after step 2 (see bash below)
* disable PGO completely, losing some optimization

Seen in the wild:
* gcc
* python `make profile-opt`
* [openSUSE/bash](https://build.opensuse.org/request/show/498339)
* [openSUSE/gzip](https://build.opensuse.org/request/show/499887)
* [openSUSE/libsamplerate](https://build.opensuse.org/request/show/562897)
