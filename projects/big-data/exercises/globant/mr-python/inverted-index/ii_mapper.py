#!/usr/bin/env python
import sys

from sys import stdin
import re
import os

#Import stop-words, and remove them
for line in stdin:

        fileName = os.environ['map_input_file']

        book = re.findall(r'\w+', fileName)[-2]

        words = re.findall(r'\w+', line.strip())

        for word in words:
                print("%s\t%s:1" % (word.lower(), book))
