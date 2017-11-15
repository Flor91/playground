import: IOException, StringTokenizer, Map, HashMap, StringEscapeUtils
org.apache.hadoop: Configuration, fs.Path, io.IntWritable, io.Text, mapreduce.Job, Mapper, Reducer, FileInputFormat, FileOutputFormat, GenericOutputParser

public class CommentWordCount {

  public static class WordCountMapper extends Mapper<Object, Text, Text, IntWritable>{
    private final static IntWritable one = new IntWritable(1);
    private Text word = new Text();

    public void map(Object key, Text value, Context context) throws IOException, InterruptedException {
      //Parse input string to a map
      Map<String, String> parsed = MRDPUtils.transformXmlToMap(value.toString());

      //Grab "text" field
      String txt = parsed.get("Text");
      if (txt == null){
        //skip this record
        return;
      }
      txt = StringEscapeUtils.unescapeHtml(txt.toLowerCase());
      txt.replaceAll("'", ""); // Remove single quotes
      txt.replaceAll("[^a-zA-Z]", " "); // Replace the rest with spaces

      //Tokenize the string by splitting it up on whitespace into something we can iterate over, then send the token away
      StringTokenizer itr = new StringTokenizer(txt);
      while(itr.hasMoreTokens()){
        word.set(itr.nextToken());
        context.write(word, one);
      }
    }
  }

  public static class IntSumReducer extends Reducer<Text, IntWritable, Text, IntWritable>{
    private IntWritable result = new IntWritable();

    public void reduce(Text key, Iterable<IntWritable> values, Context context) throws IOException, InterruptedException {
      int sum = 0;
      for (IntWritable val: values){
        sum += val.get();
      }
      result.set(sum);
      context.write(key, result);
    }
  }
  
  public static void main(String[] args) throws Exception{
    Configuration conf = new Configuration();
    //Parse command line arguments
    String[] otherArgs = new GenericOutputParser(conf, args).getRemainingArgs();
    if (otherArgs.length != 2){
      System.err.println("Usage: CommentWordCount <in> <out>");
      System.exit(2);
    }

    //Setup job object
    Job job = new Job(conf, "StackOverflow Comment Word Count");
    job.setJarByClass(CommentWordCount.class);
    job.setMapperClass(WordCountMapper.class);
    job.setReducerClass(IntSumReducer.class);
    //job.setCombinerClass(Combiner.class);
    job.setOutputKeyClass(Text.class);
    job.setOutputValueClass(IntWritable.class);
    FileInputFormat.addInputPath(job, new Path(otherArgs[0]));
    FileOutputFormat.setOutputPath(job, new Path(otherArgs[1]));
    System.exit(job.waitForCompletion(true) ? 0 : 1);
  }
}
