#!/usr/bin/env python
import sys
import re
import os
from stop_words import get_stop_words
import nltk
from nltk.corpus import stopwords

stop_words = set(get_stop_words('english') + stopwords.words('english'))

# Input from standard Input: Estoy recibiendo linea a linea los books.txt
for line in sys.stdin:
    # Output: (key) word %s NombreLibro:position (value)

    # 1. Necesito saber el nombre del libro - que .txt estoy leyendo?
    # MR/Hadoop uses a variable called mapreduce_map_input_file (> v 2.6) / map_input_file (< v 2.6)
    # ==> Name of the input file the mapper task is working with
    try:
        book = os.environ['mapreduce_map_input_file']
    except KeyError:
        book = os.environ['map_input_file']

    words = set(re.sub("[^\w]", " ",  mystr).split())

    filtered_words = [w for w in words if not w in stop_words]

    for word in filtered_words:
        print("%s\t%s:1", word, book)
