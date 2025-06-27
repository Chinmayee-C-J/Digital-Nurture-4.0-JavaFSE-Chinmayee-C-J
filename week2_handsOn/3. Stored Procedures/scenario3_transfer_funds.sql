-- Scenario 3: Transfer funds between accounts

-- Create Accounts table
CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    Balance NUMBER(10,2)
);

-- Sample data
INSERT INTO Accounts VALUES (401, 5000);
INSERT INTO Accounts VALUES (402, 3000);

-- Procedure to transfer funds
CREATE OR REPLACE PROCEDURE TransferFunds(p_from_account IN NUMBER, p_to_account IN NUMBER, p_amount IN NUMBER) AS
    v_balance NUMBER;
BEGIN
    SELECT Balance INTO v_balance FROM Accounts WHERE AccountID = p_from_account;

    IF v_balance >= p_amount THEN
        UPDATE Accounts
        SET Balance = Balance - p_amount
        WHERE AccountID = p_from_account;

        UPDATE Accounts
        SET Balance = Balance + p_amount
        WHERE AccountID = p_to_account;

        DBMS_OUTPUT.PUT_LINE('Transfer of ' || p_amount || ' from Account ' || p_from_account || ' to Account ' || p_to_account || ' completed.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Insufficient balance in Account ' || p_from_account);
    END IF;
END;
/
