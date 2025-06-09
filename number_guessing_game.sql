-- Number Guessing Game
-- Made by Anirudh Pratap Shukla

DECLARE
    target NUMBER := TRUNC(DBMS_RANDOM.VALUE(1, 101));
    guess NUMBER;
    attempts NUMBER := 0;
    max_attempts NUMBER := 7;
    player_name VARCHAR2(100) := 'Priya'; -- Indian name for player
BEGIN
    DBMS_OUTPUT.PUT_LINE('Welcome, ' || player_name || '! Let''s play Number Guessing Game (by Anirudh)');
    LOOP
        -- Simulate user input for demonstration
        guess := TRUNC(DBMS_RANDOM.VALUE(1, 101));
        attempts := attempts + 1;
        DBMS_OUTPUT.PUT_LINE('Attempt ' || attempts || ': You guessed ' || guess);
        IF guess = target THEN
            DBMS_OUTPUT.PUT_LINE('Congratulations, ' || player_name || '! You guessed the number in ' || attempts || ' tries.');
            EXIT;
        ELSIF guess < target THEN
            DBMS_OUTPUT.PUT_LINE('Try higher, ' || player_name || '.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Try lower, ' || player_name || '.');
        END IF;
        IF attempts >= max_attempts THEN
            DBMS_OUTPUT.PUT_LINE('Sorry, ' || player_name || ', you''ve used all attempts. The number was ' || target || '.');
            EXIT;
        END IF;
    END LOOP;
END;
