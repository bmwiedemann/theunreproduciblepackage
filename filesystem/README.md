There are several ways, a filesystem can be used to introduce indeterminism:

1. [readdir order](../readdir) is already covered in its own section

2. storing `mtime`, `ctime` or `atime` values of files touched during build will introduce [varying timestamps](../timestamp)

3. using `st_ino` or `st_dev` fields from [`stat(2)`](http://man7.org/linux/man-pages/man2/stat.2.html)

4. storing `st_size` for directories or using `st_blocks` or `st_blksize` for any file, because it is filesystem-dependent. E.g. creating a million files and removing them again, will cause a directory to be large on ext4


## Seen in the wild:

1.
    * see [readdir](../readdir)

2.
    * .pyc files in cpython
    * compiled free pascal (fpc) files
    * fwnn .dic files

3.
    * [fwnn](https://osdn.net/projects/freewnn/ticket/38482)
    * [geany](https://bugzilla.opensuse.org/show_bug.cgi?id=1049382)

4.
    * [rpm](https://github.com/rpm-software-management/rpm/commit/2cf7096ba534b065feb038306c792784458ac9c7)
