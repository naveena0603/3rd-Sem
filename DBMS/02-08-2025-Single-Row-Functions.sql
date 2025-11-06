-- Single row functions
-- A single row functions return 1 result
-- per row
-- Aggregate MIN(), MAX(), COUNT(), SUM(), AVG()
--SELECT MIN(salary) FROM employee;
-- Aggregate functions provide 1 result per
-- multiple rows
-- Numeric Functions
-- CEIL(), ABS(), FLOOR(), POW(), SQRT()
-- MOD() (Modulo Division)

-- Dual table --> Is used as a dummy table
-- if you want to fetch the data without actual
-- table
-- Single row table
SELECT * FROM dual;
SELECT 1 + 1 FROM dual;

SELECT 4 * 20 AS product FROM dual;
-- Character Functions
-- Date / Time Functions
SELECT
    1 + 1 AS sum, 
    10 * 20 AS product, 
    5 / 2 AS quotient
FROM dual;
-- 12c, 11g
SELECT
    1 + 1 AS sum, 
    10 * 20 AS product, 
    5 / 2 AS quotient;
    
-- ABS()
-- Used to given absolute value
-- abs()
SELECT ABS(-146) AS absolute_value
FROM dual;
SELECT ABS(146) AS absolute_value
FROM dual;
SELECT ABS(-146.45) AS absolute_value
FROM dual;

-- FLOOR(), CEIL()
-- FLOOR() --> rounds down the 
-- number to nearest integer possible
-- CEIL() --> rounds up the
-- number to nearest integer possible

SELECT FLOOR(15.9) FROM dual;
SELECT CEIL(15.9) FROM dual;
SELECT CEIL(15.1) FROM dual;
SELECT FLOOR(-15.9) FROM dual;
SELECT CEIL(-15.9) FROM dual;

-- POWER(), SQRT()
SELECT POWER(6, 3), SQRT(25), SQRT(30)
FROM dual;

-- MOD() 
-- Used to perform modulo division
-- gives remainder as result
SELECT MOD(10, 2) AS remainder FROM dual;
SELECT MOD(100, 41) AS remainder FROM dual;

-- ROUND()
-- Rounds the number based on number of digits
-- provided
SELECT ROUND(143.2579, 2) FROM dual;

-- TRUNC()
SELECT TRUNC(143.2579, 2) FROM dual;

-- Single Row functions
SELECT SQRT(salary) FROM employee;



-- Character Functions
-- Conversion
-- UPPER(), LOWER(), INITCAP()
-- Substring
-- SUBSTR(), INSTR(), REPLACE()
-- Concatentation
-- CONCAT(), || ->Concatenation

SELECT UPPER('aditya university') FROM dual;

SELECT UPPER(name) FROM employee;
SELECT LOWER(name) FROM employee;
-- INITCAP(), convert every words first letter into capital
-- Titlecase / PascalCase
SELECT INITCAP('aditya university') FROM dual;

-- || --> Concatentation operator
SELECT 'aditya' || 'university' FROM dual;
SELECT 'aditya' || ' ' || 'university' FROM dual;

-- LENGTH() -> Used to get the number
-- of charaters present in the string
SELECT LENGTH('technical hub') FROM dual;

-- SUBSTR(string, start_position, [no. of chars])
-- Used to get a part of the string from original
-- string
SELECT SUBSTR('technical hub', 4) FROm dual;
SELECT SUBSTR('technical hub', 4, 1) FROm dual;
SELECT SUBSTR('technical hub', 11) FROM dual;
SELECT SUBSTR('technical hub', 5, 4);


SELECT SUBSTR('technical hub', -1) FROm dual;
SELECT SUBSTR('technical hub', -3) FROm dual;
SELECT SUBSTR('technical hub', -3, 1) FROm dual;
-- To print the concatentation of first and last
-- characters in technical hub
SELECT
    SUBSTR('technical hub', 1, 1) || SUBSTR('technical hub', -1)
FROM dual;

SELECT
    name, SUBSTR(name, 1, 1) || SUBSTR(name, -1)
FROM employee;

-- INSTR(string, sub_str, [search_position, occur. no])
-- Used to find whether a substring is present in the
-- original string or not
-- If Yes, returns the first letter position in the
-- main string, else returns 0

SELECT INSTR('Oracle SQL', 'SQL') FROM dual;
SELECT INSTR('Oracle SQL SQL', 'SQL') FROM dual;
SELECT INSTR('Oracle SQL', 'SQL', 9) FROM dual;
SELECT INSTR('Oracle SQL SQL', 'SQL', 9) FROM dual;
-- Try to find the second occurance of SQL in
-- Oracle SQL SQL string, start searching from 1 
-- position
SELECT INSTR('Oracle SQL SQL', 'SQL', 1, 2) FROM dual;


SELECT INSTR('Oracle SQL SQL SQL', 'SQL', 5, 3) FROM dual;
SELECT INSTR('Oracle SQL SQL SQL', 'SQL', 15, 3) FROM dual;


-- REPLACE(string, substr, new_string)
-- Used to replace all the occurences of
-- substr in the string with new_string
SELECT REPLACE('Oracle SQL', 'SQL', 'Database')
FROM dual;
SELECT REPLACE('Oracle SQL SQL', 'SQL', 'Database')
FROM dual;
-- 2-47-15
SELECT REPLACE('2-47-15', '-', ':') FROM dual;

-- ASCII() -> Used to give ASCII value of a character
SELECT ASCII('a') FROM dual;
SELECT ASCII('#') FROM dual;
SELECT ASCII('ABC') FROM dual;
-- CHR() -> Used to give ASCII character of a number
SELECT CHR(97) FROM dual;
SELECT CHR(35) FROM dual;

-- TRIM() -> Using trim you can remove
-- leading or trailing characters
-- from a string
-- TRIM(character FROM string)
SELECT TRIM('*' FROM '***sql***') AS trimmed_string
FROM dual;

SELECT Length(TRIM('*' FROM '***sql***')) 
AS trimmed_string
FROM dual;

SELECT TRIM(' ' FROM '   24B11CS346   ')
AS new_string FROM dual;

SELECT LENGTH(TRIM(' ' FROM '   24B11CS346   '))
AS new_string FROM dual;


-- Date and Time functions
-- Oracle's  DATE data type
-- not only holds date it also holds time
-- SYSDATE -> Return the date based on
-- time zone of server of database
-- CURRENT_DATE -> Return the date baseon
-- the time zone set to a particular
-- session of the data base
-- Session parameters
-- DATE -> DATE and TIME
-- TO_CHAR()
-- Used to convert a data into
-- string, based on a format mask
SELECT SYSDATE FROM dual;
SELECT CURRENT_DATE FROM dual;

SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD')
FROM dual;

SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH12:MI:SS AM')
FROM dual;


SELECT DBTIMEZONE FROM dual; -- GMT/UTC
SELECT SESSIONTIMEZONE  FROM dual;


SELECT TO_CHAR(CURRENT_DATE, 'YYYY-MM-DD HH24:MI:SS')
FROM dual; -- Session time
!!!!!!!!+`~

-- Subtract two dates and can get how many days
-- are present in between two dates
SELECT
    TO_DATE('2025-08-02 13:35:07', 'YYYY-MM-DD HH24:MI:SS')
    -
    TO_DATE('2025-08-01 12:25:04', 'YYYY-MM-DD HH24:MI:SS')
FROM dual;
-- 1 Day 1 Hours 10 minutes 3 secods
-- 3600 + 600 + 3 --> 4203

-- borrowal_date, return_date

-- TO_DATE()
-- Used to convert A STRING into  A date
-- based on format mask
-- TO_CHAR()
-- Used to convert Date into String
SELECT TO_CHAR(CURRENT_DATE, 'YYYY-MON-DD') FROM dual;
SELECT TO_CHAR(CURRENT_DATE, 'YYYY-MONTH-DD') FROM dual;
SELECT TO_CHAR(CURRENT_DATE, 'YYYY') FROM dual;
SELECT TO_CHAR(CURRENT_DATE, 'MM') FROM dual;
SELECT TO_CHAR(CURRENT_DATE, 'MON') FROM dual;
SELECT TO_CHAR(CURRENT_DATE, 'MONTH') FROM dual;
SELECT TO_CHAR(CURRENT_DATE, 'DD') FROM dual;
SELECT TO_CHAR(CURRENT_DATE, 'Day') FROM dual;
SELECT TO_CHAR(CURRENT_DATE, 'HH') FROM dual;
SELECT TO_CHAR(CURRENT_DATE, 'MI') FROM dual;
SELECT TO_CHAR(CURRENT_DATE, 'SS') FROM dual;

-- How many orders were place in the year 2022?
SELECT COUNT(*) AS order_count FROM
orders
WHERE
order_date >= TO_DATE('01-01-2022', 'DD-MM-YYYY')
and order_date <= TO_DATE('31-12-2022', 'DD-MM-YYYY');

SELECT COUNT(*) AS order_count FROM
orders
WHERE TO_CHAR(order_date, 'YYYY') = 2022;

SELECT * FROM orders
ORDER BY order_date;

-- Find out how many orders are placed
-- in the month of november?
SELECT COUNT(*) AS order_count FROM
orders
WHERE TO_CHAR(order_date, 'MM') = 11;

-- MONTHS_BETWEEN()
-- NEXT_DAY()
-- LAST_DAY()
-- ADD_MONTHS()





