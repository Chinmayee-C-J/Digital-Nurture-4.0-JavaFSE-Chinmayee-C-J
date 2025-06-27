-- Scenario 2: Update employee bonus by department

-- Create Employees table
CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Department VARCHAR2(50),
    Salary NUMBER(10,2)
);

-- Sample data
INSERT INTO Employees VALUES (301, 'Alice', 'HR', 50000);
INSERT INTO Employees VALUES (302, 'Bob', 'IT', 60000);
INSERT INTO Employees VALUES (303, 'Charlie', 'HR', 55000);

-- Procedure to update bonus
CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(p_dept IN VARCHAR2, p_bonus_pct IN NUMBER) AS
BEGIN
    UPDATE Employees
    SET Salary = Salary + (Salary * p_bonus_pct / 100)
    WHERE Department = p_dept;

    DBMS_OUTPUT.PUT_LINE('Bonus applied to department: ' || p_dept);
END;
/
