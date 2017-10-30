#!/usr/bin/python
myhash={}
for i in range(1,10):
    myhash["key" + str(i)] = "value" + str(i)

print(myhash)

for key in myhash:
    print(key + " => " + myhash[key])

print "---"
for key,value in myhash.items():
    print(key + " => " + value)
