#!/usr/bin/env python

from sys import stdin
import re

prev_col = "0"
col_vals = []
sum = 0.0
mean = 0.0
for line in stdin:
	col,n,val = line.split("\t")
	vali = float(re.sub('[^0-9 ]', '', val))
	if col == prev_col:
		col_vals = col_vals + [vali]
		sum = sum + vali
	else:
		mean = sum / len(col_vals)
		print "%s\t%f\t%s" % (prev_col, mean, str(col_vals))
		sum = 0
		prev_col = col
		col_vals = [vali]

#Print last line
mean = sum / len(col_vals)
print "%s\t%f\t%s" % (prev_col, mean, str(col_vals))
