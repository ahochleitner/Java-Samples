import java.util.Vector;

public class MemoryConsumer {

    private static float CAP = 0.8f;  // 80%
    private static int ONE_MB = 1024 * 1024;

    private static Vector cache = new Vector();

    public static void main(String[] args) throws Exception {
	System.out.println("Schlafen");
	Thread.sleep(30000);
	System.out.println("Schlafen beendet");
        Runtime rt = Runtime.getRuntime();

        long maxMemBytes = rt.maxMemory();
        long usedMemBytes = rt.totalMemory() - rt.freeMemory();
        long freeMemBytes = rt.maxMemory() - usedMemBytes;

        int allocBytes = Math.round(freeMemBytes * CAP);

        System.out.println("== Read Values ==");
        System.out.println("Max memory: " + rt.maxMemory()/ONE_MB + "MB");
        System.out.println("Total memory: " + rt.totalMemory()/ONE_MB + "MB");
        System.out.println("Free memory: " + rt.freeMemory()/ONE_MB + "MB");
        System.out.println("== Calculated ==");
        System.out.println("Max memory: " + maxMemBytes/ONE_MB + "MB");
        System.out.println("Initial free memory: " + freeMemBytes/ONE_MB + "MB");

        System.out.println("Reserve (80% of free): " + allocBytes/ONE_MB + "MB");

	long start = System.currentTimeMillis();
        for (int i = 0; i < allocBytes / ONE_MB; i++){
            cache.add(new byte[ONE_MB]);
        }
	long end = System.currentTimeMillis();

        usedMemBytes = rt.totalMemory() - rt.freeMemory();
        freeMemBytes = rt.maxMemory() - usedMemBytes;

        System.out.println("== after allocation-loop ==");
        System.out.println("Free memory: " + freeMemBytes/ONE_MB + "MB");
	System.out.println("alloc loop duration " + (end - start)/1000);
	System.out.println("Everything is OK");
    }
}

