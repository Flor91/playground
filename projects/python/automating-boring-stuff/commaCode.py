#! python3
# commaCode.py - recieves a list of items, and returns a string of the objects separated by ,

import sys

if len(sys.argv) < 2:
    print("Usage: python commaCode.py [list of objects] - returns list in a string")
    sys.exit()

try:
    l = list(sys.argv[1:])
except ValueError:
    print("Argument must be a list of objects")
    sys.exit()

text = ", ".join(l[:-1])
text += " and " + l[-1]

print(text)
