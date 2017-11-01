Wildcards can have different meaning for locales. The example is Estonian
language which has the letter Z before letters T, U, V, W, X, Y. This affects
the common `[A-Z]` idiom in both globbing (bash) and regular expressions.

```
make
make LC_COLLATE=eesti
```
