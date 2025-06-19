import java.util.Arrays;
import java.util.Comparator;

public class ProductFind {
    // Linear search 
    public static Product linearSearch(Product[] products, int targetID) {
        for (Product product : products) {
            if (product.getId() == targetID) {
                return product;
            }
        }
        return null;
    }
    // Binary search 
    public static Product binarySearch(Product[] sortedP, int targetID) {
        int low = 0;
        int high = sortedP.length - 1;

        while (low <= high) {
            int mid = (low + high) / 2;
            int midId = sortedP[mid].getId();

            if (midId == targetID) return sortedP[mid];
            else if (midId < targetID) low = mid + 1;
            else high = mid - 1;
        }

        return null;
    }
    public static void sortbyId(Product[] products) {
        Arrays.sort(products, Comparator.comparingInt(Product::getId));
    }
}