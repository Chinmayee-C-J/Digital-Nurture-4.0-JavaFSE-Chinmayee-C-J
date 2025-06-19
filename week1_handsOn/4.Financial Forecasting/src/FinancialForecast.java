public class FinancialForecast {

    public static double forecastRecursive(double initialValue, double growthrate, int years) {
        if (years == 0) {
            return initialValue;
        }
        return forecastRecursive(initialValue, growthrate, years - 1) * (1 + growthrate);
    }
    //Optimized
    public static double forecastOptimized(double initialValue, double growthrate, int years) {
        return helper(initialValue, growthrate, years);
    }
    private static double helper(double value, double growthrate, int years) {
        if (years == 0) return value;
        return helper(value * (1 + growthrate), growthrate, years - 1);
    }
}
