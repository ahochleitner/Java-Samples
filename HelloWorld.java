
import java.util.Set;

public class HelloWorld {

    public static void main(String[] args) {
        System.out.println("Hello World");
        getThreadInfo();
    }

    public static void getThreadInfo1() {
        Set<Thread> threads = Thread.getAllStackTraces().keySet();

        for (Thread t : threads) {
            System.out.println("thread: " + t);
        }
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
