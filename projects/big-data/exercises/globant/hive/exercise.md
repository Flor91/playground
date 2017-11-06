Install
Step 1: Complete the installation of Java and Hadoop on CentOS

Before we install Hive we need to make sure that Java and Hadoop are already installed on our master node.

Install Java 8 with the same steps mentioned in my post 2 Ways of installing Java 8 on CentOS
Than after complete the installation of Hadoop from Setup Multi Node Hadoop 2.6.0 Cluster with YARN
Step 2: Download and Extract Apache Hive and Derby

Execute following commands to download Hive and Derby from Apache Mirrors

Setup Derby Enviroment Variables

$ echo "" >> /etc/profile
$ echo "### Derby Variables ###" >> /etc/profile
$ echo "export DERBY_INSTALL=/opt/derby" >> /etc/profile
$ echo "export DERBY_HOME=/opt/derby" >> /etc/profile
Setup Hive Enviroment Variables

$ echo "" >> /etc/profile
$ echo "### Hive Variables ###" >> /etc/profile
$ echo "export HADOOP=/opt/hadoop/bin/hadoop" >> /etc/profile
$ echo "export HIVE_HOME=/opt/hive" >> /etc/profile
$ echo "export PATH=\$HIVE_HOME/bin:\$PATH" >> /etc/profile
Load environment variables

$ source /etc/profile
Step 4: Hive Configurations in hive-site.xml

Go to $HIVE_HOME/conf directory and create hive-site.xml with following content.

$ vi $HIVE_HOME/conf/hive-site.xml
hive-site.xml

<?xml version="1.0"?>
<configuration>
<property>
  <name>javax.jdo.option.ConnectionURL</name>
  <value>jdbc:derby://master.backtobazics.com:1527/metastore_db;create=true</value>
  <description>JDBC connect string for a JDBC metastore</description>
</property>

<property>
  <name>javax.jdo.option.ConnectionDriverName</name>
  <value>org.apache.derby.jdbc.ClientDriver</value>
  <description>Driver class name for a JDBC metastore</description>
</property>
</configuration>
Step 5: Create hive directories on HDFS

Create hive warehouse directories on HDFS and give proper access rights to them using below commands

$ hdfs dfs -mkdir /tmp
$ hdfs dfs -mkdir -p /user/hive/warehouse
$ hdfs dfs -chmod g+w /tmp
$ hdfs dfs -chmod g+w /user/hive/warehouse
Step 6: Start/Stop Derby Server

Start Derby Server using following command.

$ nohup /opt/derby/bin/startNetworkServer -h master.backtobazics.com > /opt/derby/logs/server.log &
You can stop this process by killing the process

## Get process id
$ ps -ef | grep derby
root  7528  4111  5 10:58 pts/0    00:00:01 /usr/java/jdk1.7.0_25/bin/java -classpath /opt/derby/lib/derby.jar:/opt/derby/lib/derbynet.jar:/opt/derby/lib/derbytools.jar:/opt/derby/lib/derbyclient.jar org.apache.derby.drda.NetworkServerControl start -h master.backtobazics.com
root  7552  4111  0 10:58 pts/0    00:00:00 grep derby

## Kill the process
$ kill -9 7528
Step 7: Open hive shell

Open hive shell using following command and get ready for executing your hive commands.

$ $HIVE_HOME/bin/hive

Logging initialized using configuration in jar:file:/opt/hive/lib/hive-common-1.2.1.jar!/hive-log4j.properties
hive>
You are done…. :) but that is not it. We’ll go one extra step :)

What if you are getting following exception?

[ERROR] Terminal initialization failed; falling back to unsupported

No worries, here is the solution. You just have to remove jline-0.9.94.jar file from $HADOOP_HOME/share/hadoop/yarn/lib/ directory. We’ll just rename that file with following command.

$ mv $HADOOP_HOME/share/hadoop/yarn/lib/jline-0.9.94.jar $HADOOP_HOME/share/hadoop/yarn/lib/jline-0.9.94.jar~
Now try Step 7 again….. :)



# Hive - Exercise
Column-wise Variance (s2) of a matrix Given a csv file without headers, calculate the sample variance ( s2 ) of each column. (http://en.wikipedia.org/wiki/Variance)
HDFS DataSet path: /user/hadoop/mapreduce/data/matrix     ���DON�T DOWNLOAD IT FROM THE CLUSTER $$$$!!!

hint 1: Suggested output: sampleVariance1<tab>sampleVariance2<tab>sampleVariance3... Example: 135.6   2.2   536.9   ...
hint 2: Assume the file has only numeric values and no entries are missing (no NULLs or empty).
