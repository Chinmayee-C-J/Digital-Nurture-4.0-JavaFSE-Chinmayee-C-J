public class Product {
    private int id;
    private String name;
    private String category;
    // Constructor
    public Product(int id, String name, String category) {
        this.id = id;
        this.name = name;
        this.category = category;
    }
    public int getId() {
         return id; 
    }
    public String getName() { 
        return name; 
    }
    public String getCategory() {
         return category;
    }

    //toString for easy representation
    @Override
    public String toString() {
        return String.format("Product{id=%d, name='%s', category='%s'}", id, name, category);
    }
}
