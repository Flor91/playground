public class Map extends Mapper<LongWritable,Text,Text,Text> {

      @Override

      public void map(LongWritable key, Text value, Context context)

      throws IOException,InterruptedException

      {
          String fileName = ((FileSplit) context.getInputSplit()).getPath().getName();

          String line=value.toString();

          String words[]=line.split(" ");

          for(String s:words){

              context.write(new Text(s), new Text(fileName));

          }

      }
}
