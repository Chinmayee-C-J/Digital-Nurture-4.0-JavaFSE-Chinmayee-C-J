public class Main {
    public static void main(String[] args) {
        double initialValue = 1000.0;
        double growthrate = 0.05;
        int years = 5;

        double resultRecursive = FinancialForecast.forecastRecursive(initialValue, growthrate, years);
        System.out.printf("Future forecast value (Recursive): %.2f%n", resultRecursive);

        double resultOptimized = FinancialForecast.forecastOptimized(initialValue, growthrate, years);
        System.out.printf("Future forecast value (Optimized): %.2f%n", resultOptimized);
    }
}
