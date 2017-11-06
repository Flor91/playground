# Config
Download Dataset: https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2
Rename to crimes.csv

Login to MySql
> mysql -u root -p (root)

 CREATE DATABASE training;
 USE training;
 CREATE TABLE crimes (ID INT NOT NULL PRIMARY KEY,
 CaseNumber VARCHAR(30),
 Date DATE,
 Block VARCHAR(30),
 IUCR VARCHAR(30),
 PrimaryType VARCHAR(30),
 Description VARCHAR(30),
 LocationDescription VARCHAR(30),
 Arrest BOOLEAN,
 Domestic BOOLEAN,
 Beat VARCHAR(30),
 District VARCHAR(30),
 Ward INT,
 CommunityArea VARCHAR(30),
 FBICode VARCHAR(30),
 XCoordinate INT,
 YCoordinate INT,
 Year INT,
 UpdatedOn DATE,
 Latitude INT,
 Longitude INT,
 Location VARCHAR(30));

 mysqlimport --ignore-lines=1 --fields-terminated-by=, --columns='ID,CaseNumber,Date,Block,IUCR,PrimaryType,Description,LocationDescription,Arrest,Domestic,Beat,District,Ward,CommunityArea,FBICode,XCoordinate,YCoordinate,Year,UpdatedOn,Latitude,Longitude,Location' --local -u root -p training /home/training/data/crimes/crimes.csv;


---

Install Sqoop:
Donwload: wget -c http://www.eu.apache.org/dist/sqoop/1.4.6/sqoop-1.4.6.bin__hadoop-2.0.4-alpha.tar.gz

$sudo tar –zxvf sqoop-1.4.6.bin__hadoop-2.0.4-alpha.tar.gz
$sudo mv sqoop-1.4.6.bin__hadoop-2.0.4-alpha /usr/local/sqoop

sudo chown -R training:training /usr/local/sqoop

Add variables to bashrc
 ***Append the below at the end of the file***
 export SQOOP_HOME=/usr/local/SQOOP
 export PATH=$SQOOP_HOME/bin:$PATH

$source ~/.bashrc

Download MySQL connector jar - Download “mysql-connector-java-5.1.36.tar.gz” and extract it.
- mv mysql-connector-java-5.1.36-bin.jar /usr/local/sqoop/lib


---

view the mysql files
$sqoop list-tables --connect jdbc:mysql://localhost:3306/training --username root --password root

To import all tables
$sqoop import-all-tables --connect jdbc:mysql://localhost:3306/training --username root -P

# 1A. Import a dataset from MySql into HDFS
Given a real dataset that contains data about Crimes in Chicago from 2001 till now (already stored in MySQL), import into HDFS only the crimes of 2005.
- MySQL Table: training.crimes

sqoop import --connect jdbc:mysql://localhost:3306/training --username root --password root --query "select * from crimes where year < 2005 order by name" --split-by state --hive-import --target-dir test --hive-table sorteddata

# 1B. Export a dataset from HDFS into MySQL
Export the data that you have stored in HDFS in the previous exercise into a new table in MySQL.
Hint 1: Check the output that Sqoop writes to command line, there�s always useful data there.
Hint 2: To improve the performance, vary the number of mappers by applying different values to --num-mappers <n>.


---------------------

3. To import a mysql table into hdfs
$sqoop import --connect jdbc:mysql://localhost:3306/training --username root --password root --table crimes

4. To import a mysql table into hive
$sqoop import --connect jdbc:mysql://localhost:3306/training --username root --password root --table crimes --hive-import

5. To import table based on user defined condition into hive  [--m denotes the mappers]
$sqoop import --connect jdbc:mysql://localhost:3306/training --username root -P --table crimes --where "state like 'k%'" --m 3 --hive-import --hive-table kstate

6. To import a table using split by option [mappers is decided based on the values in column specified in split by option, if you want to control the mappers then explicitly specify --m]
$sqoop import --connect jdbc:mysql://localhost:3306/training --username root --password root --table crimes --split-by state --hive-import --hive-table splittest

7. To import a table using query
$sqoop import --connect jdbc:mysql://localhost:3306/training --username root --password root --query "select * from crimes where \$CONDITIONS order by name" --split-by state --hive-import --target-dir test --hive-table sorteddata

8. To import a table without hive delimiters [drops \n, \r and \01 from string fields]
$sqoop import --connect jdbc:mysql://localhost:3306/training --username root --password
root --table crimes –hive-import --hive-drop-import-delims

9. To import a table into hdfs with specific delimiters
$sqoop import --connect jdbc:mysql://localhost:3306/training --username root --password root --table crimes --fields-terminated-by "||"



Notes


1. When importing MySQL tables to hive, sometimes extra rows may be imported. This might be because the table data contains hive delimiters. To overcome this issue, use --hive-drop-import-delims
Example: $sqoop import --connect jdbc:mysql://localhost:3306/training --username root --password root --table crimes –hive-import --hive-drop-import-delims

2. If the table does not contain primary key, specify the number of mappers as 1 or using --split-by.
Example: sqoop import --connect jdbc:mysql:// localhost:3306/training --username root  -P --table crimes --m 1
Example: sqoop import --connect jdbc:mysql:// localhost:3306/training --username root  -P --table crimes --split-by State
