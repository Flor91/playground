# Inverted Index

Given a directory with books in txt format, write a mapreduce which outputs an inverted index,
i.e., a table that associates a word with the books and the corresponding positions at which it
occurs (http://en.wikipedia.org/wiki/Inverted_index).

Dataset URL: here

HDFS Cluster DataSet path: /user/hadoop/mapreduce/data/books

FS DataSet path: /home/data/books_dataset.zip

- hint 1: Suggested output example (not real data):
Love alice_in_wonderland.txt:100,the_prince.txt:900,the_prince.txt:1050

- hint 2: Given the mapper doesn’t receive the filename as input. A Hadoop Configured
Parameter (environment variable) could help to retrieve the filename from which the word
comes.

# Solution

## 1. Data to HDFS
1.1. Place .zip at /home/data/books, and extract
```
$ unzip books_dataset.zip
```

1.2. Upload dataset to HDFS

  1.2.1. Create directory in HDFS
  ```
  $ hdfs dfs -mkdir -p /user/data/books
  ```

  1.2.2 Move data from local
  ```
  $ hdfs dfs -put /user/data/books
  ```
