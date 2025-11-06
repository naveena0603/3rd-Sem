CREATE TABLE employee(
    id NUMBER,
    name VARCHAR2(50),
    salary  NUMBER(7, 2),
    doj DATE
);
-- DML command to insert the data
INSERT INTO employee VALUES(1, 'Alice', 56000.50, '10-JUL-25');
-- Using TO_DATE() function
INSERT INTO employee VALUES(2, 'Bob', 45000.12, TO_DATE('10-08-2024', 'DD-MM-YYYY'));
INSERT INTO employee VALUES(3, 'Charlie', 45000.12, TO_DATE('2023-09-23', 'YYYY-MM-DD'));

SELECT * FROM employee;

-- nls_date_format parameter
-- Command to find the current session's NLS_DATE_FORMAT
SELECT value
FROM nls_session_parameters 
WHERE parameter='NLS_DATE_FORMAT';

-- DML commands (UPDATE, DELETE)
CREATE TABLE users(
    u_id NUMBER,
    u_name VARCHAR2(50),
    email_id VARCHAR2(100),
    user_since DATE
);
INSERT INTO users(u_id, u_name) VALUES(1, 'Alice');
INSERT INTO users(u_id, u_name) VALUES(2, 'Bob');
SELECT * FROM users;
-- Task
-- alice: 17-MAR-1998
-- bob: 26-DEC-2007
-- UPDATE --> command is used to make changes to the existing data
-- Syntax: UPDATE table_name SET column_name = value
UPDATE users SET email_id = 'alice@gmail.com';

-- WHERE clause
UPDATE users SET email_id = 'bob@gmail.com' WHERE u_id = 2;
-- ADD a new column called gender
-- alice: female
-- bob: male
-- Task2:
-- change the name of column u_name to u_first_name
--- add a new column called u_last_name
-- alice: wells
-- bob: marley


SELECT * FROM product;
DELETE FROM product WHERE product_id=1; -- products with id=1 are deleted