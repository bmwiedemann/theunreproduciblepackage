#!/usr/bin/python3
import glob
import os

for entry in os.listdir('in'):
    print(entry);

for entry in glob.glob('in/*'):
    print(entry);

for entry in os.walk('in'):
    # note: for nested dirs, both list of dirs and list of files need to be sorted to make the output reproducible
    print(entry);

# Find with:
# egrep -r -e 'os\.(listdir|walk)' -e 'glob\.glob' .

# Fix with:
# sorted(os.listdir('in'))
