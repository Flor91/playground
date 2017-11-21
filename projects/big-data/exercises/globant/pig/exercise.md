# Pig Practice

## A. Investigating Crimes
1. Given a real dataset that contains data about Crimes in Chicago from 2001 till now (already stored in MySQL), import it into HDFS using Sqoop.
2. Count all the crimes which description is �Simple�; order those crimes by year; print the results to console, and also store them to a text file.     -
Dataset: https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2
- MySQL Table: bdtraining.chicago_crimes

grunt> crimes = LOAD 'crimes.txt' USING PigStore(',') as (ID:int, CaseNumber:int, Date:datetime, Block:int, IUCR:int, PrimaryType:chararray, Description:chararray, LocationDescription:chararray, Arrest:boolean, Domestic:boolean, Beat:boolean, District:chararray, Ward:chararray, CommunityArea:chararray, FBICode:int, XCoordinate:int, YCoordinate:int, Year:int, UpdatedOn:datetime, Latitude:int, Longitude:int, Location:chararray);

> simple_crimes = FILTER crimes BY description == 'Simple';

> ordered = ORDER simple_crimes BY year;

> STORE simple_crimes INTO '/user/data/crimes/output' USING PigStore(',');


Hint 1: There are many ways for resolving this exercise. Check the �performance considerations� slide and find the most suitable approach.

## B. The 100 most popular words
1. We would like to know the 100 most popular words which appeared in both of the following books, in descending order by number of appearances:

 the_adventures_of_sherlock_holmes.txt
 the_adventures_of_tom_sawyer.txt
 (*) Filter articles and pronouns
        - URL: /home/hadoop/mapreduce/data/books

Hint 1: Remember that the JOIN operation is one of the most expensives in terms of performance. Consider to pre-process the data before joins.

lines_sherlock = LOAD '/user/data/books/the_adventures_of_sherlock_holmes.txt' as (line:chararray);
lines_sawyer = LOAD '/user/data/books/the_adventures_of_tom_sawyer.txt' as (line:chararray);
lines = UNION lines_sherlock, lines_sawyer;
words = FOREACH lines GENERATE FLATTEN(TOKENIZE(LOWER(line))) as words;
groupedwords = GROUP words BY words;
wordcount = FOREACH groupedwords GENERATE group as words, COUNT(words) as total;
orderedwordscount = ORDER wordcount BY total DESC;
maxwordscount= LIMIT orderedwordscount 100;
DUMP maxwordcount;

# Install

wget -c http://apache.dattatec.com/pig/pig-0.16.0/pig-0.16.0.tar.gz

Step 2: Extract the tar file using tar command. In below tar command, x means extract an archive file, z means filter an archive through gzip, f means filename of an archive file.

Command: tar -xzf pig-0.16.0.tar.gz

Command: ls

Untar Pig File - Pig Installation - Edureka

Step 3: Edit the “.bashrc” file to update the environment variables of Apache Pig. We are setting it so that we can access pig from any directory, we need not go to pig directory to execute pig commands. Also, if any other application is looking for Pig, it will get to know the path of Apache Pig from this file.

Command:  sudo gedit .bashrc

Add the following at the end of the file:

# PIG variables
export PIG_HOME=/usr/local/pig
export PATH=$PATH:/usr/local/pig/bin
export PIG_CLASSPATH=$HADOOP_CONF_DIR

Also, make sure that hadoop path is also set.

Run below command to make the changes get updated in same terminal.

Command: source .bashrc

Step 4: Check pig version. This is to test that Apache Pig got installed correctly. In case, you don’t get the Apache Pig version, you need to verify if you have followed the above steps correctly.

Command: pig -version

Pig Version - Pig Installation - Edureka

Step 5: Check pig help to see all the pig command options.

Command: pig -help

Pig Help - Pig Installation - Edureka

Step 6: Run Pig to start the grunt shell. Grunt shell is used to run Pig Latin scripts.

Command: pig
