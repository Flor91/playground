# Explore Log Events Interactively

Flume is a scalable, real-time ingest framework that allows you to route, filter, aggregate, and perform "mini-operations" on data on its way into a scalable processing platform like CDH. However, you do want to minimize the logic done on its way into the cluster, This will assure ready availability for other workloads and prevent ingest bottlenecks. It still allows you to utilize the huge scalability of the CDH cluster for more heavy-duty processing. If you need to do some heavy-duty aggregations or multi-step ETL of incoming data, you should use Spark - an in-memory processing framework that scales with the rest of the processing framework and has advanced analytic capabilities built in.

Note also that in real production systems it might be a better option to pipe any log events through syslog. This provides a more robust production deployment, as it does not depend on file appends.

---

What you can do to enable guided drill down and exploration of data is to make it searchable. By indexing your data using any of the indexing options provided by Cloudera Search, your data can be searchable to a variety of audiences. You can choose to batch index data using the MapReduce Indexing tool, or as in our example below, extend the Apache Flume configuration that is already ingesting the web log data to also post events to Apache Solr for indexing in real-time.

Solr organizes data similarly to the way a SQL database does. Each record is called a 'document' and consists of fields defined by the schema: just like a row in a database table. Instead of a table, Solr calls it a 'collection' of documents. The difference is that data in Solr tends to be more loosely structured. Fields may be optional, and instead of always matching exact values, you can also enter text queries that partially match a field, just like you're searching for web pages. You'll also see Hue refer to 'shards' - and that's just the way Solr breaks collections up to spread them around the cluster so you can search all your data in parallel.


## Create your search index

Ordinarily when you are deploying a new search schema, there are four steps:

### Creating an empty configuration
```
    [cloudera@quickstart ~]$ solrctl --zk quickstart:2181/solr instancedir --generate solr_configs
```
    The result of this command would be a skeleton configuration that you could then customize to your liking. The primary thing that you would ordinarily be customizing is the conf/schema.xml, which we cover in the next step.


### Edit your schema

    As mentioned previously, we have already generated the configuration files for you. You can view the modified sample schema here.

    The most common area that you would be interested in is the <fields></fields> section. From this area you can define the fields that are present and searchable in your index.

### Uploading your configuration
```
    [cloudera@quickstart ~]$ cd /opt/examples/flume
    [cloudera@quickstart ~]$ solrctl --zk quickstart:2181/solr instancedir --create live_logs ./solr_configs
```
### Creating your collection
```
    [cloudera@quickstart ~]$ solrctl --zk quickstart:2181/solr collection --create live_logs -s 1
```

You can verify that you successfully created your collection in Solr by going to Hue, and clicking Search in the top menu

Flume is a tool for ingesting streams of data into your cluster from sources such as log files, network streams, and more. Morphlines is a Java library for doing ETL on-the-fly, and it's an excellent companion to Flume. It allows you to define a chain of tasks like reading records, parsing and formatting individual fields, and deciding where to send them, etc. We've defined a morphline that reads records from Flume, breaks them into the fields we want to search on, and loads them into Solr (You can read more about Morphlines here). This example Morphline is defined at /opt/examples/flume/conf/morphline.conf, and we're going to use it to index our records in real-time as they're created and ingested by Flume.

## Starting the Log Generator

Your Cloudera Live cluster has a log generator for use with sample data. Start the log generator by running the following command:
```
[cloudera@quickstart ~]$ start_logs
```
You can verify that the log generator has started by running
```
[cloudera@quickstart ~]$ tail_logs
```
When you're done watching the logs, you can hit <Ctrl + C> to return to your terminal.

## Flume and the morphline

Now that we have an empty Solr index, and live log events coming in to our fake access.log, we can use Flume and morphlines to load the index with the real-time log data.

The key player in this tutorial is Flume. Flume is a system for collecting, aggregating, and moving large amounts of log data from many different sources to a centralized data source.

With a few simple configuration files, we can use Flume and a morphline (a simple way to accomplish on-the-fly ETL,) to load our data into our Solr index.

You can use Flume to load many other types of data stores; Solr is just the example we are using for this tutorial.

You can review the flume.conf file and the morphline.conf that it uses.

Start the Flume agent by executing the following command:
```
[cloudera@quickstart ~]$ flume-ng agent \
    --conf /opt/examples/flume/conf \
    --conf-file /opt/examples/flume/conf/flume.conf \
    --name agent1 \
    -Dflume.root.logger=DEBUG,INFO,console
```
This will start running the Flume agent in the foreground.
