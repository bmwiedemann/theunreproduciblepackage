See also https://reproducible-builds.org/docs/stable-outputs/

Many interpreted languages offer randomized hash tables (aka dict aka associative array) as a defense against DoS (see [oCERT-2011-003](http://www.ocert.org/advisories/ocert-2011-003.html) for more discussion).

If a build process depends on output from such a randomized hash, it can be nondeterministic.

One possible solution is to do in the build environment

```bash
export QT_HASH_SEED=0
export PERL_HASH_SEED=42
export PYTHONHASHSEED=0
```

Which will tell perl, python and Qt's QHash to use a constant hash seed instead of a randomized one.

Another correct approach when a build process depends on output from a hash is to sort the keys of the hash and explicitly output it in the order of the keys.

Observed in the wild:

* C++ [llvm](https://reviews.llvm.org/D50559)
* C++ [gcc](https://gcc.gnu.org/bugzilla/show_bug.cgi?id=90778)
* go [rclone](https://github.com/rclone/rclone/pull/3289)
* perl [HSAIL-Tools](https://github.com/HSAFoundation/HSAIL-Tools/pull/51)
* perl [yast-x11](https://github.com/yast/yast-x11/pull/18)
* salt [bind-formula](https://github.com/saltstack-formulas/bind-formula/pull/110/commits/7f500766e0d9aec76522feb89e02bd1f3b0b7d42)
