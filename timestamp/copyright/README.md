Some software and documentation uses the year of build
in copyright strings.

As long as this only touches comments in .c or .h files,
it will only alter the build-id in the resulting binary.

However, building today's software in 2037 and getting a
`Copyright © 2002-2037 THEAUTHORS`
is wrong, because nobody authored anything in 2037 in this version.

Projects are better off manually updating the year with git commits
or updating the date from a ChangeLog or input file mtime
so it remains constant for release tarballs.

See also on the [stackoverflow discussion](https://stackoverflow.com/questions/2390230/do-copyright-dates-need-to-be-updated) titled "Do copyright dates need to be updated?"

Seen in the wild:
* https://github.com/dealii/dealii/pull/7258/files cmake
* https://gitlab.com/gnutls/gnutls/merge_requests/928/diffs autoconf/shell
* https://github.com/kubernetes/kubernetes/pull/59172/files go
* https://github.com/pytest-dev/pytest/pull/3710/files python
* https://github.com/apache/cassandra/commit/84fc68ce3f77e88a542dd2443e560cb291109198 java
* https://issues.apache.org/jira/browse/MCOMPILER-380 java
* https://www.redhat.com/archives/libguestfs/2018-August/msg00230.html
