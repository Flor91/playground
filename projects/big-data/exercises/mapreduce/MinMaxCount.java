//Problem: Given a list of user's comments, determine the first and list time a user commented and the total number of comments of that user.

public class MinMaxCountTuple implements Writable {
  // Object - mappers output / reducers input - that stores:
  private Date min = new Date();
  private Date max = new Date();
  private long count = 0;

  private final static SimpleDateFormat frmt = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");
  //getters and setters

  public void readFields(DataInput in) throws IOException{
    
  }
}
