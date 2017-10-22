* The HDFS configuration is located in a set of XML files in the Hadoop configuration directory;
conf/ under the main Hadoop install directory (where you unzipped Hadoop to).

* The conf/hadoop-defaults.xml file contains default values for every parameter in Hadoop.
This file is considered read-only.

* You override this configuration by setting new values in conf/hadoop-site.xml.
This file should be replicated consistently across all machines in the cluster.

* Adding the line <final>true</final> inside the property body will prevent properties from being overridden by user applications.

The following settings are necessary to configure HDFS:

| key  | value | example |
| ------------- | ------------- | ------------- |
| fs.default.name | protocol://servername:port  | hdfs://alpha.milkman.org:9000 |
| dfs.data.dir  | pathname | /home/username/hdfs/data |
| dfs.name.dir | pathname | /home/username/hdfs/name |


**fs.default.name** - This is the URI (protocol specifier, hostname, and port) that describes the NameNode for the cluster. Each node in the system on which Hadoop is expected to operate needs to know the address of the NameNode. The DataNode instances will register with this NameNode, and make their data available through it. Individual client programs will connect to this address to retrieve the locations of actual file blocks.


**dfs.data.dir** - This is the path on the local file system in which the DataNode instance should store its data. It is not necessary that all DataNode instances store their data under the same local path prefix, as they will all be on separate machines; it is acceptable that these machines are heterogeneous. However, it will simplify configuration if this directory is standardized throughout the system. By default, Hadoop will place this under /tmp. This is fine for testing purposes, but is an easy way to lose actual data in a production system, and thus must be overridden.


**dfs.name.dir** - This is the path on the local file system of the NameNode instance where the NameNode metadata is stored. It is only used by the NameNode instance to find its information, and does not exist on the DataNodes. The caveat above about /tmp applies to this as well; this setting must be overridden in a production system.

**dfs.replication** - This is the default replication factor for each block of data in the file system. For a production cluster, this should usually be left at its default value of 3.


### Example hadoop-site.xml file for a single-node configuration:
```
<configuration>
  <property>
    <name>fs.default.name</name>

    <value>hdfs://your.server.name.com:9000</value>
  </property>
  <property>
    <name>dfs.data.dir</name>

    <value>/home/username/hdfs/data</value>
  </property>
  <property>
    <name>dfs.name.dir</name>

    <value>/home/username/hdfs/name</value>
  </property>
</configuration>
```

After copying this information into your conf/hadoop-site.xml file, copy this to the conf/ directories on all machines in the cluster.

The master node needs to know the addresses of all the machines to use as DataNodes; the startup scripts depend on this.

Also in the conf/ directory, edit the file slaves so that it contains a list of fully-qualified hostnames for the slave instances, one host per line. On a multi-node setup, the master node (e.g., localhost) is not usually present in this file.

Then make the directories necessary:
```
  user@EachMachine$ mkdir -p $HOME/hdfs/data

  user@namenode$ mkdir -p $HOME/hdfs/name
```

The user who owns the Hadoop instances will need to have read and write access to each of these directories. It is not necessary for all users to have access to these directories.

Set permissions with chmod as appropriate. In a large-scale environment, it is recommended that you create a user named "hadoop" on each node for the express purpose of owning and running Hadoop tasks.

For a single individual's machine, it is perfectly acceptable to run Hadoop under your own username. It is not recommended that you run Hadoop as root.

## STARTING HDFS
Now we must format the file system that we just configured:
```
  user@namenode:hadoop$ bin/hadoop namenode -format
```
This process should only be performed once. When it is complete, we are free to start the distributed file system:
```
  user@namenode:hadoop$ bin/start-dfs.sh
```

This command will start the NameNode server on the master machine (which is where the start-dfs.sh script was invoked).
It will also start the DataNode instances on each of the slave machines.

In a single-machine "cluster," this is the same machine as the NameNode instance. On a real cluster of two or more machines, this script will ssh into each slave machine and start a DataNode instance.
