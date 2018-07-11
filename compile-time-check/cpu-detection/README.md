Some packages do CPU-detection at compile time.
This can happen using gcc's -march=native, -mcpu=native or -mtune=native compiler options.

The former ones might even cause the software to break on older CPUs because those do not know newer instructions. That is usually not desirable for a general-purpose software distribution.

## Examples

* See [r-b blog 168](https://reproducible-builds.org/blog/posts/168/) and [this openSUSE bug](https://bugzilla.opensuse.org/show_bug.cgi?id=1100677)
