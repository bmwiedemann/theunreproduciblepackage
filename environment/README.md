some software explicitly collects information from the build environment (e.g. hostname, kernel version)
or implicitly uses some of it (e.g. locale or timezone)

It is possible to get reproducible build results by using a normalized build environment such as a virtual machine that always builds with the same kernel and hostname.

The other way is to patch software to not collect or depend on that environment - possibly only when `SOURCE_DATE_EPOCH` is set, so that developer's debug builds still work as they need it.

https://github.com/bmwiedemann/reproducible-faketools can help to discover or workaround some of these issues as well.
