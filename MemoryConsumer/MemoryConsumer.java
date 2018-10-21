import java.util.Vector;
import java.util.Set;

public class MemoryConsumer {

    private static float CAP = 0.8f;  // 80%
    private static int ONE_MB = 1024 * 1024;

    private static long SLEEP_TIME=2000;

    private static Vector cache = new Vector();

    public static void main(String[] args) throws Exception {
	System.out.println("Sleep");
	//getThreadInfo();
	Thread.sleep(SLEEP_TIME);
	System.out.println("Sleep end");
	System.out.println();
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
	    System.out.print("."+i);
        }
	System.out.println();
	long end = System.currentTimeMillis();

        usedMemBytes = rt.totalMemory() - rt.freeMemory();
        freeMemBytes = rt.maxMemory() - usedMemBytes;

        System.out.println("== after allocation-loop ==");
        System.out.println("Free memory: " + freeMemBytes/ONE_MB + "MB");
        System.out.println("Total memory: " + rt.totalMemory()/ONE_MB + "MB");
	System.out.println("alloc loop duration " + (end - start)/1000);
	System.out.println("Everything is OK, final sleep");
	System.out.println();
	Thread.sleep(SLEEP_TIME);
	//getThreadInfo();
	System.out.println("Finish");
    }

    public static void getThreadInfo() {
        Set<Thread> threads = Thread.getAllStackTraces().keySet();

        for (Thread t : threads) {
            String name = t.getName();
            Thread.State state = t.getState();
            int priority = t.getPriority();
            String type = t.isDaemon() ? "Daemon" : "Normal";
            System.out.printf("%-20s \t %s \t %d \t %s\n", name, state, priority, type);
        }
    }
}

