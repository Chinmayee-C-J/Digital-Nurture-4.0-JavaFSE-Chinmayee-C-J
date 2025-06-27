-- Scenario 1: Process monthly interest for savings accounts

-- Create SavingsAccounts table
CREATE TABLE SavingsAccounts (
    AccountID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    Balance NUMBER(10,2)
);

-- Sample data
INSERT INTO SavingsAccounts VALUES (201, 1, 1000);
INSERT INTO SavingsAccounts VALUES (202, 2, 2000);
INSERT INTO SavingsAccounts VALUES (203, 3, 1500);

-- Procedure to process interest
CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest AS
BEGIN
    UPDATE SavingsAccounts
    SET Balance = Balance + (Balance * 0.01);

    DBMS_OUTPUT.PUT_LINE('Monthly interest processed for all savings accounts.');
END;
/
