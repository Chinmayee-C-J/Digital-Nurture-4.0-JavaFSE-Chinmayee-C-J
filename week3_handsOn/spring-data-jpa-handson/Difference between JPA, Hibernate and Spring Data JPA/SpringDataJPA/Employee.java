import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Employee {
    @Id
    private int id;
    private String firstName;
    private String lastName;

    // Getters and setters
}
