public class CpuBench {
  public static void main(String[] argv)
  throws Exception
  {
      long start = System.currentTimeMillis();
      for (int ii = 0 ; ii < 100000000 ; ii++)
      {
        String s = "this XXX a test".replaceAll("XXX", " is ");
      }
      long elapsed = System.currentTimeMillis() - start;
      System.out.println("elapsed time = " + elapsed + "ms");
      System.out.println((elapsed * 1000.0) / 1000000 + " microseconds per execution");
  }
}
