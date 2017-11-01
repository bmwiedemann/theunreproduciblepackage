This is a collection of some locale-oriented pitfalls. This is especially
dangerous with European languages, which use latin alphabet, but have some rules
that differ from `en_US` locale. The examples included here are mainly around
common Roman letters which made it to most European languages, without
diacritics.

* `case` &mdash; a lowercase / uppercase conversion

The solution, in most cases, should be to enforce `C.UTF-8` locale.
