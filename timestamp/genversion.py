#!/usr/bin/python
import datetime
with open("../out/version.h", "w") as f:
    f.write('BUILD_DATE="'+datetime.datetime.today().strftime("%F %T") + "\"\n")
