public class MemoryInfo {    
    public static void main(String args[]) {
                System.out.println("Used Memory   :  " + (Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()) + " bytes");
                System.out.println("Free Memory   : " + Runtime.getRuntime().freeMemory() + " bytes");
                System.out.println("Total Memory  : " + Runtime.getRuntime().totalMemory() + " bytes");
                System.out.println("Max Memory    : " + Runtime.getRuntime().maxMemory() + " bytes");            
        }
}

// run with    java -Xms1025k -Xmx1025k -XshowSettings:vm  MemoryInfo
