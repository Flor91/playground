# Relationship strength analytics using Spark

## About Spark:

If you are familiar with MapReduce, you will notice that this Spark example uses very similar concepts of 'map' and 'reduce' operations (the 'join' and 'groupBy' operations are just special variations of 'reduce'). The key advantage, though, of using Spark is that the code is more concise and the intermediate results can be stored in memory - allowing us to do complex, iterative sequences much faster.

Using MapReduce may still be a good option for batch jobs that use a lot more data than fit in the memory of the cluster (e.g. petabytes of data). We're using Spark-on-YARN which means that MapReduce and Spark (like many components of CDH) share the same resource manager, making it easier to manage the sharing of resources among many users.

---

The tool in CDH best suited for quick analytics on object relationships is Apache Spark. You can compose a Spark job to do this work and give you insight on product relationships.
```
[cloudera@quickstart ~]$ spark-shell --master yarn-client
```


Once the scala> prompt has appeared, paste the following code:

```spark-shell
// First we're going to import the classes we need

import org.apache.hadoop.mapreduce.Job
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat
import org.apache.avro.generic.GenericRecord
import parquet.hadoop.ParquetInputFormat
import parquet.avro.AvroReadSupport
import org.apache.spark.rdd.RDD

// Then we create RDD's for 2 of the files we imported from MySQL with Sqoop
// RDD's are Spark's data structures for working with distributed datasets

def rddFromParquetHdfsFile(path: String): RDD[GenericRecord] = {
    val job = new Job()
    FileInputFormat.setInputPaths(job, path)
    ParquetInputFormat.setReadSupportClass(job,
        classOf[AvroReadSupport[GenericRecord]])
    return sc.newAPIHadoopRDD(job.getConfiguration,
        classOf[ParquetInputFormat[GenericRecord]],
        classOf[Void],
        classOf[GenericRecord]).map(x => x._2)
}

val warehouse = "hdfs://quickstart/user/hive/warehouse/"
val order_items = rddFromParquetHdfsFile(warehouse + "order_items");
val products = rddFromParquetHdfsFile(warehouse + "products");

// Next, we extract the fields from order_items and products that we care about
// and get a list of every product, its name and quantity, grouped by order

val orders = order_items.map { x => (
    x.get("order_item_product_id"),
    (x.get("order_item_order_id"), x.get("order_item_quantity")))
}.join(
  products.map { x => (
    x.get("product_id"),
    (x.get("product_name")))
  }
).map(x => (
    scala.Int.unbox(x._2._1._1), // order_id
    (
        scala.Int.unbox(x._2._1._2), // quantity
        x._2._2.toString // product_name
    )
)).groupByKey()

// Finally, we tally how many times each combination of products appears
// together in an order, then we sort them and take the 10 most common

val cooccurrences = orders.map(order =>
  (
    order._1,
    order._2.toList.combinations(2).map(order_pair =>
        (
            if (order_pair(0)._2 < order_pair(1)._2)
                (order_pair(0)._2, order_pair(1)._2)
            else
                (order_pair(1)._2, order_pair(0)._2),
            order_pair(0)._1 * order_pair(1)._1
        )
    )
  )
)
val combos = cooccurrences.flatMap(x => x._2).reduceByKey((a, b) => a + b)
val mostCommon = combos.map(x => (x._2, x._1)).sortByKey(false).take(10)

// We print our results, 1 per line, and exit the Spark shell

println(mostCommon.deep.mkString("\n"))

exit
```

* When we do a 'map', we specify a function that will take each record and output a modified record. This is useful when we only need a couple of fields from each record or when we need the record to use a different field as the key: we simply invoke map with a function that takes in the entire record, and returns a new record with the fields and the key we want.

* The 'reduce' operations - like 'join' and 'groupBy' - will organize these records by their keys so we can group similar records together and then process them as a group. For instance, we group every purchased item by which specific order it was in - allowing us to determine all the combinations of products that were part of the same order.


If it weren't for Spark, doing cooccurrence analysis like this would be an extremely arduous and time-consuming task. However, using Spark, and a few lines of scala, you were able to produce a list of the items most frequently purchased together in very little time.
