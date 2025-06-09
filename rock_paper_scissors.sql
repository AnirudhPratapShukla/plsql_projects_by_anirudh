-- Rock-Paper-Scissors Game by Anirudh Pratap Shukla

DECLARE
    user_choice VARCHAR2(10);
    computer_choice VARCHAR2(10);
    result VARCHAR2(50);
    user_name VARCHAR2(100) := 'Ananya'; -- Indian player
BEGIN
    -- Simulate user input (for demo)
    user_choice := 'rock';

    -- Computer randomly chooses
    computer_choice := CASE MOD(TRUNC(DBMS_RANDOM.VALUE(0, 3)), 3)
        WHEN 0 THEN 'rock'
        WHEN 1 THEN 'paper'
        ELSE 'scissors'
    END;

    DBMS_OUTPUT.PUT_LINE('Player: ' || user_name || ' | Choice: ' || user_choice);
    DBMS_OUTPUT.PUT_LINE('Computer''s choice: ' || computer_choice);

    IF user_choice = computer_choice THEN
        result := 'It''s a tie!';
    ELSIF (user_choice = 'rock' AND computer_choice = 'scissors') OR
          (user_choice = 'scissors' AND computer_choice = 'paper') OR
          (user_choice = 'paper' AND computer_choice = 'rock') THEN
        result := user_name || ' wins!';
    ELSE
        result := 'Computer wins!';
    END IF;

    DBMS_OUTPUT.PUT_LINE(result || ' (Game by Anirudh)');
END;
/
EXEC anirudh_deposit(101, 5090);
EXEC anirudh_withdraw(102, 1000);
EXEC anirudh_check_balance(101);

EXEC anirudh_calc_grade(1);

EXEC anirudh_days_between(DATE '2025-06-01', DATE '2025-06-09');
EXEC anirudh_day_of_week(DATE '2025-06-09');
