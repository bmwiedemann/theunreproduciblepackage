To reproduce the issue:

```
make TZ=UTC-14
make TZ=UTC+12
```

To avoid the issue:
export TZ=UTC
or always call date -u
and replace calls to localtime with gmtime
to always use the universal UTC timezone
