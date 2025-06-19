public class Main {
    public static void main(String[] args) {
        //Example Products
        Product[] inventory = {
            new Product(105, "Smartphone", "Electronics"),
            new Product(101, "Laptop", "Electronics"),
            new Product(109, "Office Chair", "Furniture"),
            new Product(102, "Pen", "Stationery")
        };

        System.out.println("Linear Search for ID 109:");
        Product foundLinear = ProductFind.linearSearch(inventory, 109);
        System.out.println(foundLinear != null ? foundLinear : "Product not found");

        Product[] sortedInventory = inventory.clone();
        ProductFind.sortbyId(sortedInventory);

        System.out.println("\nBinary Search for ID 102:");
        Product foundBinary = ProductFind.binarySearch(sortedInventory, 102);
        System.out.println(foundBinary != null ? foundBinary : "Product not found");
    }
}
