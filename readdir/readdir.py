#!/usr/bin/python
import glob
import os

for entry in os.listdir('in'):
    print(entry);

for entry in glob.glob('in/*'):
    print(entry);

for entry in os.walk('in'):
    print(entry);
