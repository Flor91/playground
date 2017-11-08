#!/usr/bin/env python

from sys import stdin
import re
import os

sum_s = 0
out = "Reducer: "
for line in stdin:
    col,mean,values = line.split("\t")
    values = re.sub('[^0-9 ]', '', values).split(' ')

    for v in values:
        s = (float(v) - float(mean)) ** 2
        sum_s =+ s

    col_variance = sum_s / (len(values) - 1)
    out = out + col + " " + str(col_variance) + "    "

print out
