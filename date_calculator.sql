-- Date Calculator by Anirudh Pratap Shukla

-- Procedure to calculate days between two dates
CREATE OR REPLACE PROCEDURE anirudh_days_between(date1 DATE, date2 DATE) IS
    diff NUMBER;
BEGIN
    diff := date2 - date1;
    DBMS_OUTPUT.PUT_LINE('Days between ' || TO_CHAR(date1, 'DD-Mon-YYYY') || ' and ' || TO_CHAR(date2, 'DD-Mon-YYYY') || ': ' || diff);
END;
/

-- Procedure to find day of the week for a given date
CREATE OR REPLACE PROCEDURE anirudh_day_of_week(d DATE) IS
    day_name VARCHAR2(20);
BEGIN
    SELECT TO_CHAR(d, 'Day') INTO day_name FROM dual;
    DBMS_OUTPUT.PUT_LINE('Day for ' || TO_CHAR(d, 'DD-Mon-YYYY') || ': ' || TRIM(day_name));
END;
/
