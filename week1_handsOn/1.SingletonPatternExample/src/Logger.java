public class Logger {

    private static Logger instance;

    private Logger() {
        System.out.println("Logger initialized.");
    }

    // return single instsance
    public static Logger getInstance() {
        if (instance == null) {
            instance = new Logger();
        }
        return instance;
    }
    //log messages
    public void log(String message) {
        System.out.println("Log: " + message);
    }
}
