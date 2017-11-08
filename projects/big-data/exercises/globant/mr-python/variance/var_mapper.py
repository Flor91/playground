#!/usr/bin/env python

from sys import stdin
import re

for line in stdin:
	line = re.sub('[^0-9 ]', '', line)
	line = re.sub('  ', ' ', line)
	values = line.split(" ")
	size = len(values)

	for i in range (0, size):
		print str(i) + "\t1\t" + str(values[i])
