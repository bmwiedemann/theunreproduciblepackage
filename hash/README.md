Many interpreted languages offer randomized hash tables (aka dict aka associative array) as a defense against DoS (see [oCERT-2011-003](http://www.ocert.org/advisories/ocert-2011-003.html) for more discussion).

If a build process depends on output from such a randomized hash, it can be non-reproducible.

One possible solution is to do in the build environment

```bash
export QT_HASH_SEED=42
export PERL_HASH_SEED=42
export PYTHONHASHSEED=0
```

Which will tell perl, python and Qt's QHash to use a constant hash seed instead of a randomized one.

Another correct approach when a build process depends on output from a hash is to sort the keys of the hash and explicitly output it in the order of the keys.
