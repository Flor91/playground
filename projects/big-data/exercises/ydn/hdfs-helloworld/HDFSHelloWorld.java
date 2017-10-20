import java.io.File;
import java.io.IOException;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.FSDataInputStream;
import org.apache.hadoop.fs.FSDataOutputStream;
import org.apache.hadoop.fs.Path;

/*
  This program creates a file named hello.txt, writes a short message into it, then reads it back and prints it to the screen.
  If the file already existed, it is deleted first.
*/

public class HDFSHelloWorld {
  public static final String theFilename = "hello.txt";
  public static final String message = "Hello, world!\n";

  public static void main (String [] args) throws IOException {
    /*First we get a handle to an abstract FileSystem object, as specified by the application configuration.
    The Configuration object created uses the default parameters.*/
     Configuration conf = new Configuration();
     FileSystem fs = FileSystem.get(conf);
     // The FileSystem interface actually provides a generic abstraction suitable for use in several file systems.

     /*
     To ensure that it uses the proper Hadoop configuration,
     launch this program through Hadoop by putting it in a jar and running:
      $HADOOP_HOME/bin/hadoop jar yourjar HDFSHelloWorld
      */

     Path filenamePath = new Path(theFilename);

     try {
       if (fs.exists(filenamePath)) {
         // remove the file first
         fs.delete(filenamePath);
       }

       /*
       First we create the file with the fs.create() call, which returns an FSDataOutputStream used to write data into the file.
       We then write the information using ordinary stream writing functions;
       FSDataOutputStream extends the java.io.DataOutputStream class.
       When we are done with the file, we close the stream with out.close().
       */
       FSDataOutputStream out = fs.create(filenamePath);
       out.writeUTF(message);
       out.close();

       //Other operations such as copying, moving, and renaming are equally straightforward operations on Path objects performed by the FileSystem.

       /*
       The fs.open() method returns an FSDataInputStream, which subclasses java.io.DataInputStream.
       Data can be read from the stream using the readUTF() operation, as on line 33.
       When we are done with the stream, we call close() to free the handle associated with the file.
       */
       FSDataInputStream in = fs.open(filenamePath);
       String messageIn = in.readUTF();
       System.out.print(messageIn);
       in.close();
     } catch (IOException ioe) {
       System.err.println("IOException during operation: " + ioe.toString());
       System.exit(1);
     }
   }
}
