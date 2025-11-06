-- DROP TABLE employee;

CREATE TABLE employee (
    id NUMBER(5) PRIMARY KEY,
    name VARCHAR2(50),
    age INT,
    gender VARCHAR2(10),
    department VARCHAR2(20),
    salary INT,
    date_of_joining DATE,
    email VARCHAR2(100)
);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (1, 'John Doe', 29, 'Male', 'HR', 55000, TO_DATE('2021-04-15', 'YYYY-MM-DD'), 'john.doe@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (2, 'Jane Smith', 34, 'Female', 'SW', 62000, TO_DATE('2019-03-12', 'YYYY-MM-DD'), 'jane.smith@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (3, 'Sam Williams', NULL, NULL, 'Operations', 73000, TO_DATE('2020-06-25', 'YYYY-MM-DD'), 'sam.williams@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (4, 'Emily Brown', 30, 'Female', 'Testing', 67000, TO_DATE('2018-07-10', 'YYYY-MM-DD'), 'emily.brown@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (5, 'David Johnson', 32, NULL, 'HR', 75000, TO_DATE('2021-01-18', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (6, 'Sarah Lee', 27, 'Female', 'SW', 54000, TO_DATE('2022-09-05', 'YYYY-MM-DD'), 'sarah.lee@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (7, 'Michael Davis', NULL, NULL, 'Operations', 82000, TO_DATE('2018-12-20', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (8, 'Olivia Wilson', 25, 'Female', 'Testing', 66000, TO_DATE('2020-07-15', 'YYYY-MM-DD'), 'olivia.wilson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (9, 'James Martinez', 40, 'Male', NULL, 59000, TO_DATE('2015-01-05', 'YYYY-MM-DD'), 'james.martinez@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (10, 'Sophia Taylor', 26, 'Female', 'SW', 70000, TO_DATE('2021-03-09', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (11, 'William Anderson', 33, 'Male', 'Operations', NULL, TO_DATE('2021-06-18', 'YYYY-MM-DD'), 'william.anderson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (12, 'Lucas Thomas', 29, 'Male', 'Testing', 63000, TO_DATE('2020-02-25', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (13, 'Amelia Garcia', 31, 'Female', 'HR', 50000, TO_DATE('2019-11-05', 'YYYY-MM-DD'), 'amelia.garcia@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (14, 'Ethan White', 35, 'Male', NULL, NULL, TO_DATE('2020-03-25', 'YYYY-MM-DD'), 'ethan.white@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (15, 'Isabella Martinez', 32, 'Female', 'Testing', 64000, TO_DATE('2020-08-30', 'YYYY-MM-DD'), 'isabella.martinez@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (16, 'Daniel Lee', 28, 'Male', NULL, NULL, TO_DATE('2022-05-17', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (17, 'Charlotte Harris', 31, 'Female', 'Operations', 56000, NULL, 'charlotte.harris@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (18, 'Henry Clark', 40, 'Male', 'HR', 80000, TO_DATE('2020-03-25', 'YYYY-MM-DD'), 'henry.clark@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (19, 'Mia Young', 26, 'Female', 'SW', 60000, TO_DATE('2022-11-10', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (20, 'Jacob Scott', 37, 'Male', 'Testing', 71000, TO_DATE('2018-04-05', 'YYYY-MM-DD'), 'jacob.scott@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (21, 'Ella Adams', 27, 'Female', NULL, 54000, TO_DATE('2022-07-19', 'YYYY-MM-DD'), 'ella.adams@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (22, 'Aiden Robinson', 30, 'Male', 'SW', NULL, TO_DATE('2021-02-28', 'YYYY-MM-DD'), 'aiden.robinson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (23, 'Lily Carter', 33, NULL, 'Operations', 75000, NULL, 'lily.carter@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (24, 'Benjamin Lewis', 37, NULL, 'Testing', 69000, TO_DATE('2020-09-10', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (25, 'Chloe Walker', 31, 'Female', 'HR', 64000, TO_DATE('2019-04-22', 'YYYY-MM-DD'), 'chloe.walker@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (26, 'Matthew Hall', NULL, NULL, 'SW', 72000, NULL, 'matthew.hall@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (27, 'Charlotte King', 32, 'Female', 'Operations', 78000, TO_DATE('2021-11-30', 'YYYY-MM-DD'), 'charlotte.king@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (28, 'Elijah Allen', 26, 'Male', 'HR', 58000, TO_DATE('2021-02-01', 'YYYY-MM-DD'), 'elijah.allen@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (29, 'Zoe Wright', 29, 'Female', 'Testing', 71000, TO_DATE('2020-09-14', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (30, 'Alexander Green', 41, 'Male', 'SW', 83000, NULL, 'alexander.green@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (31, 'Ava Mitchell', 26, 'Female', 'HR', 57000, TO_DATE('2022-08-19', 'YYYY-MM-DD'), 'ava.mitchell@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (32, 'Oliver Martin', NULL, 'Male', 'SW', 66000, TO_DATE('2021-01-11', 'YYYY-MM-DD'), 'oliver.martin@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (33, 'Amos Turner', 28, 'Male', NULL, NULL, TO_DATE('2022-04-22', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (34, 'Ruby Harris', 30, 'Female', 'Testing', 71000, NULL, 'ruby.harris@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (35, 'Jack Carter', NULL, 'Male', 'SW', 75000, TO_DATE('2021-03-17', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (36, 'Liam Allen', 37, 'Male', 'Operations', 73000, TO_DATE('2022-07-10', 'YYYY-MM-DD'), 'liam.allen@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (37, 'Sophie Hill', 30, 'Female', 'HR', 56000, TO_DATE('2019-10-03', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (38, 'Charlie Scott', 29, 'Male', 'SW', 68000, TO_DATE('2021-05-09', 'YYYY-MM-DD'), 'charlie.scott@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (39, 'Alice Young', 32, 'Female', 'Testing', NULL, TO_DATE('2020-12-25', 'YYYY-MM-DD'), 'alice.young@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (40, 'Daniel Young', 35, 'Male', 'Operations', 70000, TO_DATE('2021-11-11', 'YYYY-MM-DD'), 'daniel.young@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (41, 'Megan Mitchell', 28, 'Female', NULL, 55000, TO_DATE('2022-06-15', 'YYYY-MM-DD'), 'megan.mitchell@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (42, 'Lucas Rodriguez', 30, 'Male', NULL, 80000, TO_DATE('2021-01-20', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (43, 'Sophia Hernandez', 33, 'Female', 'HR', 75000, NULL, 'sophia.hernandez@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (44, 'Evan Moore', 40, 'Male', 'Operations', 85000, TO_DATE('2018-09-21', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (45, 'Mason King', 35, 'Male', 'Testing', 67000, TO_DATE('2020-04-10', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (46, 'Jack Taylor', NULL, 'Male', NULL, 60000, NULL, 'jack.taylor@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (47, 'Grace Brown', 34, 'Female', 'SW', 69000, TO_DATE('2019-06-08', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (48, 'Benjamin Green', 38, NULL, 'Testing', 72000, TO_DATE('2021-02-10', 'YYYY-MM-DD'), 'benjamin.green@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (49, 'Mia Robinson', NULL, 'Female', 'HR', 71000, NULL, 'mia.robinson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (50, 'Noah Wright', 31, 'Male', 'Operations', NULL, TO_DATE('2020-08-23', 'YYYY-MM-DD'), 'noah.wright@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (51, 'Lucas Walker', 29, 'Male', 'HR', 35000, TO_DATE('2021-11-05', 'YYYY-MM-DD'), 'lucas.walker@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (52, 'Megan Clark', 33, 'Female', 'Operations', 50000, TO_DATE('2019-02-15', 'YYYY-MM-DD'), 'megan.clark@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (53, 'James Turner', 40, 'Male', 'Testing', 55000, TO_DATE('2015-07-25', 'YYYY-MM-DD'), 'james.turner@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (54, 'Ava Martinez', 26, 'Female', 'SW', 48000, TO_DATE('2020-01-20', 'YYYY-MM-DD'), 'ava.martinez@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (55, 'Liam Johnson', 38, 'Male', NULL, 60000, TO_DATE('2022-08-05', 'YYYY-MM-DD'), 'liam.johnson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (56, 'Olivia Wright', 32, 'Female', 'HR', 42000, TO_DATE('2020-09-15', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (57, 'Mason Lee', 26, NULL, 'Operations', 35000, TO_DATE('2021-06-12', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (58, 'Sophia Young', 29, 'Female', 'SW', 55000, TO_DATE('2017-05-30', 'YYYY-MM-DD'), 'sophia.young@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (59, 'Jacob Wilson', 34, 'Male', 'HR', 50000, TO_DATE('2020-01-10', 'YYYY-MM-DD'), 'jacob.wilson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (60, 'Chloe Scott', 33, 'Female', 'Testing', 45000, TO_DATE('2021-02-25', 'YYYY-MM-DD'), 'chloe.scott@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (61, 'William Harris', 38, 'Male', NULL, 75000, TO_DATE('2016-06-17', 'YYYY-MM-DD'), 'william.harris@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (62, 'Amelia Moore', 30, 'Female', 'Operations', 55000, TO_DATE('2019-03-30', 'YYYY-MM-DD'), 'amelia.moore@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (63, 'Henry Green', 35, 'Male', 'SW', 70000, TO_DATE('2018-11-22', 'YYYY-MM-DD'), 'henry.green@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (64, 'Lily Adams', 29, NULL, 'HR', 41000, TO_DATE('2020-12-04', 'YYYY-MM-DD'), 'lily.adams@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (65, 'Noah Carter', 41, 'Male', 'Testing', 60000, TO_DATE('2015-09-12', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (66, 'Amos King', 27, 'Male', 'Operations', 50000, TO_DATE('2021-07-29', 'YYYY-MM-DD'), 'amos.king@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (67, 'Zoe Evans', 32, 'Female', 'SW', 65000, TO_DATE('2021-02-13', 'YYYY-MM-DD'), 'zoe.evans@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (68, 'Jacob Thomas', 28, 'Male', 'HR', 48000, TO_DATE('2021-06-06', 'YYYY-MM-DD'), 'jacob.thomas@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (69, 'Mia Jackson', 30, 'Female', 'Operations', 52000, TO_DATE('2022-02-10', 'YYYY-MM-DD'), 'mia.jackson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (70, 'Jack Davis', 36, 'Male', 'Testing', 35000, TO_DATE('2014-08-22', 'YYYY-MM-DD'), 'jack.davis@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (71, 'Ava Robinson', 27, 'Female', 'SW', 62000, TO_DATE('2021-10-19', 'YYYY-MM-DD'), 'ava.robinson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (72, 'Benjamin Walker', 40, 'Male', 'Operations', 68000, TO_DATE('2019-11-07', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (73, 'Chloe Lee', 31, 'Female', 'HR', 56000, TO_DATE('2018-12-11', 'YYYY-MM-DD'), 'chloe.lee@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (74, 'Sophie Scott', 32, 'Female', 'Testing', 49000, TO_DATE('2020-03-01', 'YYYY-MM-DD'), 'sophie.scott@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (75, 'Oliver Wilson', 33, 'Male', 'Operations', 63000, TO_DATE('2021-08-24', 'YYYY-MM-DD'), 'oliver.wilson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (76, 'Aiden Green', 30, NULL, 'HR', 47000, TO_DATE('2022-10-01', 'YYYY-MM-DD'), 'aiden.green@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (77, 'Emma Thomas', 29, 'Female', 'Testing', 50000, TO_DATE('2019-05-30', 'YYYY-MM-DD'), 'emma.thomas@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (78, 'Lucas Robinson', 30, 'Male', 'SW', 55000, TO_DATE('2022-03-18', 'YYYY-MM-DD'), 'lucas.robinson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (79, 'Elijah White', 32, 'Male', 'HR', 49000, TO_DATE('2021-09-10', 'YYYY-MM-DD'), 'elijah.white@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (80, 'Oliver Harris', 28, 'Male', 'Operations', 55000, TO_DATE('2018-05-20', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (81, 'Emily Walker', 35, 'Female', 'Testing', 60000, TO_DATE('2020-06-01', 'YYYY-MM-DD'), 'emily.walker@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (82, 'Joshua Evans', 27, 'Male', 'SW', 58000, TO_DATE('2021-04-04', 'YYYY-MM-DD'), 'joshua.evans@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (83, 'Isabella Lee', 28, 'Female', 'Operations', 45000, TO_DATE('2022-11-30', 'YYYY-MM-DD'), 'isabella.lee@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (84, 'Zoe Walker', 31, 'Female', 'Testing', 62000, TO_DATE('2021-01-12', 'YYYY-MM-DD'), 'zoe.walker@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (85, 'Jack Harris', 40, 'Male', 'SW', 72000, TO_DATE('2015-04-20', 'YYYY-MM-DD'), 'jack.harris@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (86, 'Emily Mitchell', 29, 'Female', 'Operations', 53000, TO_DATE('2019-09-11', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (87, 'Ava Wilson', 35, 'Female', 'Testing', 65000, TO_DATE('2020-04-16', 'YYYY-MM-DD'), 'ava.wilson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (88, 'Jacob Lewis', 33, 'Male', 'HR', 54000, TO_DATE('2021-05-15', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (89, 'Emma Turner', 36, 'Female', 'Operations', 69000, TO_DATE('2020-03-01', 'YYYY-MM-DD'), 'emma.turner@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (90, 'Ethan Scott', 28, 'Male', 'SW', 55000, TO_DATE('2021-07-12', 'YYYY-MM-DD'), 'ethan.scott@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (91, 'Charlotte Anderson', 29, 'Female', 'HR', 35000, TO_DATE('2022-05-12', 'YYYY-MM-DD'), 'charlotte.anderson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (92, 'Liam Carter', 35, 'Male', 'SW', 48000, TO_DATE('2020-10-01', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (93, 'Mason Harris', 40, 'Male', 'Testing', 62000, TO_DATE('2018-04-15', 'YYYY-MM-DD'), 'mason.harris@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (94, 'Olivia Wilson', 30, 'Female', 'Operations', 53000, TO_DATE('2019-02-25', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (95, 'Benjamin Walker', 28, 'Male', 'SW', 47000, TO_DATE('2021-07-05', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (96, 'Sophia Lee', 33, 'Female', 'HR', 42000, TO_DATE('2019-11-13', 'YYYY-MM-DD'), 'sophia.lee@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (97, 'Lucas Evans', 30, NULL, 'Testing', 52000, TO_DATE('2021-06-22', 'YYYY-MM-DD'), 'lucas.evans@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (98, 'Lily Green', 34, 'Female', 'Operations', 65000, TO_DATE('2017-08-30', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (99, 'Henry Scott', 31, 'Male', 'Testing', 54000, TO_DATE('2020-03-17', 'YYYY-MM-DD'), 'henry.scott@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (100, 'Chloe Brown', 27, 'Female', 'HR', 48000, TO_DATE('2021-05-10', 'YYYY-MM-DD'), 'chloe.brown@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (101, 'James Johnson', 38, 'Male', 'SW', 70000, TO_DATE('2015-09-18', 'YYYY-MM-DD'), 'james.johnson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (102, 'Ava Robinson', 30, NULL, 'Testing', 46000, TO_DATE('2020-02-03', 'YYYY-MM-DD'), 'ava.robinson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (103, 'Elijah Turner', 35, 'Male', 'Operations', 55000, TO_DATE('2021-08-09', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (104, 'Isabella Martinez', 32, 'Female', 'HR', 53000, TO_DATE('2021-06-22', 'YYYY-MM-DD'), 'isabella.martinez@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (105, 'Oliver Thomas', 27, 'Male', 'SW', 58000, TO_DATE('2019-01-25', 'YYYY-MM-DD'), 'oliver.thomas@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (106, 'Sophia Wilson', 33, 'Female', NULL, 52000, TO_DATE('2018-11-10', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (107, 'Aiden Clark', 29, NULL, 'Operations', 39000, TO_DATE('2019-07-19', 'YYYY-MM-DD'), 'aiden.clark@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (108, 'Madison Wright', 32, 'Female', 'HR', 48000, TO_DATE('2021-09-04', 'YYYY-MM-DD'), 'madison.wright@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (109, 'Samuel Rodriguez', 30, NULL, 'SW', 60000, TO_DATE('2020-12-13', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (110, 'Liam Davis', 34, 'Male', 'Testing', 48000, TO_DATE('2021-03-27', 'YYYY-MM-DD'), 'liam.davis@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (111, 'Ella Harris', 26, 'Female', 'Operations', 46000, TO_DATE('2021-01-15', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (112, 'Isaac Nelson', 40, 'Male', 'SW', 55000, TO_DATE('2017-05-22', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (113, 'Grace Martinez', 36, 'Female', 'HR', 61000, TO_DATE('2015-10-13', 'YYYY-MM-DD'), 'grace.martinez@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (114, 'Benjamin Carter', 28, NULL, 'Testing', 41000, TO_DATE('2020-08-11', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (115, 'Mia Robinson', 31, 'Female', 'HR', 58000, TO_DATE('2021-02-19', 'YYYY-MM-DD'), 'mia.robinson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (116, 'Joshua Lee', 29, 'Male', 'SW', 49000, TO_DATE('2019-07-30', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (117, 'Chloe Davis', 27, 'Female', 'Operations', 45000, TO_DATE('2022-06-17', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (118, 'Jackson Harris', 33, 'Male', 'Testing', 50000, TO_DATE('2021-09-09', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (119, 'Zoey Miller', 35, 'Female', NULL, 59000, TO_DATE('2018-12-01', 'YYYY-MM-DD'), 'zoey.miller@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (120, 'Nathan Moore', 32, NULL, 'SW', 62000, TO_DATE('2020-04-13', 'YYYY-MM-DD'), 'nathan.moore@example.com');

SELECT * FROM employee;

