public class Killer {

  static final long T0 = System.nanoTime();
  static final java.util.Random R = new java.util.Random(System.nanoTime());
  
  static java.util.logging.Logger LOGGER;
  static String ID;
  
  static class Data { // 8 bytes header
    long p1; // 8 bytes
    int p2; // 4 bytes
    // 4 bytes padding
  }

  static class KillerArrays {

    KillerArrays() {
      int dataSize = 8 + 8 + 4 + 4; 
      long maxMemory = 993L * 1000L * 1000L; // the machine memory
      long myMaxMemory = maxMemory / 5; // the memory for this process. Experiment with 5 processes.
      int objectArraySize = (int) ((myMaxMemory / dataSize));
      java.util.List<Data[]> l = new java.util.ArrayList<>();
      for (int i = 1; l.size() < myMaxMemory; i++) {
        try {
          l.add(new Data[objectArraySize]);
        } catch (Throwable t) {
          log("*** ERROR *** %s", t);
	  System.exit(1);
        } finally {
		log("free / max / total : %s / %s / %s", 
		  (Runtime.getRuntime().freeMemory() / 1000), 
		  (Runtime.getRuntime().maxMemory() / 1000),
		  (Runtime.getRuntime().totalMemory()/ 1000)
		);
	}
      }
    }
  }

  static long now() {
    return System.nanoTime();
  }

  static long elapsed() {
    return now() - T0;
  }

  static void log(String format, Object... args) {
    String msg = String.format("[%s] [%8s] %s", ID, (elapsed() / 1000_000), String.format(format, args));
    LOGGER.log(java.util.logging.Level.INFO, msg);
  }

  public static void main(String[] args) throws Exception {
    // Set j.u.logging format: [LEVEL] MSG [THROWABLE]
    System.setProperty("java.util.logging.SimpleFormatter.format", "[%4$s] %5$s%n%6$s");
    ID = args.length == 0 || args[0] == null ? "0" : args[0];
    java.util.logging.FileHandler fh = new java.util.logging.FileHandler(String.format("./log-%s.log", ID), false);
    fh.setFormatter(new java.util.logging.SimpleFormatter());
    LOGGER = java.util.logging.Logger.getLogger("Killer");
    LOGGER.addHandler(fh);
    LOGGER.setUseParentHandlers(false);
    new KillerArrays();
  }
}
