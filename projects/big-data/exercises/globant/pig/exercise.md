# Pig Practice

## A. Investigating Crimes
1. Given a real dataset that contains data about Crimes in Chicago from 2001 till now (already stored in MySQL), import it into HDFS using Sqoop.
2. Count all the crimes which description is �Simple�; order those crimes by year; print the results to console, and also store them to a text file.     -
Dataset: https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2
- MySQL Table: bdtraining.chicago_crimes

Hint 1: There are many ways for resolving this exercise. Check the �performance considerations� slide and find the most suitable approach.

## B. The 100 most popular words
1. We would like to know the 100 most popular words which appeared in both of the following books, in descending order by number of appearances:

 the_adventures_of_sherlock_holmes.txt
 the_adventures_of_tom_sawyer.txt
 (*) Filter articles and pronouns
        - URL: /home/hadoop/mapreduce/data/books

Hint 1: Remember that the JOIN operation is one of the most expensives in terms of performance. Consider to pre-process the data before joins.
