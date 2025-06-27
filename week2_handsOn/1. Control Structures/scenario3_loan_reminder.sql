-- Scenario 3: Send reminders for loans due in next 30 days

-- Create Loan table
CREATE TABLE Loans (
    LoanID NUMBER PRIMARY KEY,
    CustomerID NUMBER REFERENCES Customers(CustomerID),
    DueDate DATE
);

-- Sample data
INSERT INTO Loans VALUES (101, 1, SYSDATE + 15);
INSERT INTO Loans VALUES (102, 2, SYSDATE + 40);
INSERT INTO Loans VALUES (103, 3, SYSDATE + 10);

-- PL/SQL Block
DECLARE
    CURSOR loan_cursor IS
        SELECT l.LoanID, l.CustomerID, l.DueDate, c.Name
        FROM Loans l
        JOIN Customers c ON l.CustomerID = c.CustomerID
        WHERE l.DueDate BETWEEN SYSDATE AND SYSDATE + 30;

BEGIN
    FOR loan_rec IN loan_cursor LOOP
        DBMS_OUTPUT.PUT_LINE('Reminder: Loan ID ' || loan_rec.LoanID || 
                             ' for Customer ' || loan_rec.Name || 
                             ' is due on ' || TO_CHAR(loan_rec.DueDate, 'DD-MON-YYYY'));
    END LOOP;
END;
/
