CREATE TABLE users(
    u_id NUMBER,
    u_name VARCHAR2(50)
);

INSERT INTO users(u_name, u_id) VALUES('Alice', 1);
INSERT INTO users(u_name, u_id) VALUES('Bob', 2);

-- Explanation on all DDL commands

-- ALTER
-- Used to makes changes at structure level
-- 1. ALTER + ADD
-- Using ALTER + ADD to new add new colum (s) to existing table
-- ALTER TABLE table_name ADD new_col_name dtype;
ALTER TABLE users ADD email VARCHAR2(100);
DESC users;
-- Using ALTER + ADD to add more than 1 column to the table
-- at once
-- Syntax: ALTER TABLE table_name ADD(new_col1 dtype, new_col2 dtype);
ALTER TABLE users ADD(age NUMBER, gender VARCHAR2(10));

-- 2. ALTER + MODIFY
-- Used to change the properities of fields created
DESC users;
-- Syntax: ALTER TABLE table_name MODIFY(col change_made)
ALTER TABLE users MODIFY (u_name VARCHAR2(100));
-- 3. ALTER + RENAME
-- Used to rename the columns in an existing table
-- Syntax: ALTER TABLE table_name RENAME COLUMN old_name_col TO new_name_col
ALTER TABLE users RENAME COLUMN email TO mail;

DESC users;
-- 4. ALTER + DROP
-- Used to drop column (s) from the existing tables
-- The data will be also gone with the columns
-- Syntax1: ALTER TABLE table_name DROP COLUMN column_name (Single column drop)
-- Syntax2: ALTER TABLE table_name DROP (col1, col2, col3, ...)
ALTER TABLE users DROP COLUMN mail;
ALTER TABLE users DROP(age, gender);


SELECT * FROM users;

-- TRUNCATE
-- Used to clear the content in the table
-- Syntax: TRUNCATE TABLE table_name
TRUNCATE TABLE users;

SELECT * FROM users;

-- DROP
-- Used to remove an object from database
-- Syntax: DROP TABLE table_name
DROP TABLE users;


SELECT * FROM users;

-- Using RENAME as standalone
-- Used to change the names of database objects
-- RENAME old_name_obj TO new_name_obj
RENAME users TO user_data;
SELECT * FROM user_data;