Some packages come with alternate implementations for some functions
and do benchmarking during compile time to decide which version to use.

This *might* be stable on one machine, but results will vary when building in VMs or across different types of machines.

## Examples

* [autogen](https://build.opensuse.org/request/show/585128) determines `AG_TIMEOUT` during build time.
* ksh and [graphviz](https://build.opensuse.org/request/show/498837) determine `_mmap_worthy` during build time using benchmarks.
