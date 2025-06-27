-- Scenario 2: Promote customers with balance > 10000 to VIP

-- PL/SQL Block
DECLARE
    CURSOR vip_cursor IS
        SELECT CustomerID, Balance
        FROM Customers
        WHERE Balance > 10000;

BEGIN
    FOR vip_rec IN vip_cursor LOOP
        UPDATE Customers
        SET IsVIP = 'TRUE'
        WHERE CustomerID = vip_rec.CustomerID;

        DBMS_OUTPUT.PUT_LINE('Customer ID ' || vip_rec.CustomerID || ' promoted to VIP.');
    END LOOP;

    COMMIT;
END;
/
