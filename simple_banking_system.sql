-- Simple Banking System by Anirudh Pratap Shukla

-- Table for Indian account holders
CREATE TABLE anirudh_accounts (
    acc_no NUMBER PRIMARY KEY,
    acc_name VARCHAR2(100),
    balance NUMBER
);
/
-- Insert sample Indian names
INSERT INTO anirudh_accounts VALUES (101, 'Rahul Sharma', 10000);
INSERT INTO anirudh_accounts VALUES (102, 'Sneha Patel', 15000);
/
-- Procedure to deposit money
CREATE OR REPLACE PROCEDURE anirudh_deposit(acc NUMBER, amt NUMBER) IS
BEGIN
    UPDATE anirudh_accounts SET balance = balance + amt WHERE acc_no = acc;
    DBMS_OUTPUT.PUT_LINE('Deposit successful by Anirudh for account: ' || acc);
END;
/

-- Procedure to withdraw money
CREATE OR REPLACE PROCEDURE anirudh_withdraw(acc NUMBER, amt NUMBER) IS
    bal NUMBER;
BEGIN
    SELECT balance INTO bal FROM anirudh_accounts WHERE acc_no = acc;
    IF bal >= amt THEN
        UPDATE anirudh_accounts SET balance = balance - amt WHERE acc_no = acc;
        DBMS_OUTPUT.PUT_LINE('Withdrawal successful by Anirudh for account: ' || acc);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Insufficient funds for account: ' || acc);
    END IF;
END;
/

-- Procedure to check balance
CREATE OR REPLACE PROCEDURE anirudh_check_balance(acc NUMBER) IS
    bal NUMBER;
BEGIN
    SELECT balance INTO bal FROM anirudh_accounts WHERE acc_no = acc;
    DBMS_OUTPUT.PUT_LINE('Account ' || acc || ' balance: ' || bal);
END;
/
