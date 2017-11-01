#!/usr/bin/env python

from sys import stdin
import re
import os

for line in stdin:
	line = line.strip('')[1:]
	if '"' in line:
		prod, values = line.split('"', 1)

	num_values = values.split(',')[1:4]

	#print line number to later calculate N
	out = '1-'

	for i in range(0, 2):
		#print col number + value
		try:
			out += i + float(num_values[i])
		except:
			continue

	try:
		out += '3' + float(num_values(3))
	except:
		continue

	print (out)
