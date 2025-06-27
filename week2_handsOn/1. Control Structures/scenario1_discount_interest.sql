-- Scenario 1: Discount loan interest for customers over 60

-- Create table
CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Age NUMBER,
    LoanInterestRate NUMBER(5,2),
    Balance NUMBER(10,2),
    IsVIP VARCHAR2(5)
);

-- Sample data
INSERT INTO Customers VALUES (1, 'Alice Smith', 65, 7.5, 15000, 'FALSE');
INSERT INTO Customers VALUES (2, 'Bob Johnson', 45, 6.8, 8000, 'FALSE');
INSERT INTO Customers VALUES (3, 'Carol Davis', 70, 8.2, 5000, 'FALSE');

-- PL/SQL Block
DECLARE
    CURSOR cust_cursor IS
        SELECT CustomerID, Age, LoanInterestRate
        FROM Customers
        WHERE Age > 60;

BEGIN
    FOR cust_rec IN cust_cursor LOOP
        UPDATE Customers
        SET LoanInterestRate = LoanInterestRate - 1
        WHERE CustomerID = cust_rec.CustomerID;

        DBMS_OUTPUT.PUT_LINE('Discount applied to Customer ID: ' || cust_rec.CustomerID);
    END LOOP;

    COMMIT;
END;
/
