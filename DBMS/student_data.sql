-- Creating the student table
CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    enrollment_date DATE,
    branch VARCHAR(50),
    college VARCHAR(50),
    fee INT,
    email VARCHAR(100)
);

-- DROP TABLE student;
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';
-- CSE, IoT, IT, AIML, DS, ECE, EEE
-- 05, 49, 12, 42, 44, 04, 02

-- Insert statements
INSERT INTO student VALUES (1, 'Alice', 20, '2022-08-15', 'CSE', 'AEC', 50000, 'alice@example.com');
INSERT INTO student VALUES (2, 'Bob', NULL, '2023-01-12', 'IT', 'ACET', 75000, NULL);
INSERT INTO student VALUES (3, 'Charlie', 22, NULL, 'AIML', 'ACOE', NULL, 'charlie@example.com');
INSERT INTO student VALUES (4, 'David', 19, '2023-05-20', NULL, 'AEC', 60000, 'david@example.com');
INSERT INTO student VALUES (5, 'Eva', NULL, '2022-09-01', 'DS', NULL, 55000, NULL);
INSERT INTO student VALUES (6, 'Frank', 21, NULL, 'IoT', 'ACET', NULL, 'frank@example.com');
INSERT INTO student VALUES (7, 'Grace', 18, '2023-07-15', 'ECE', NULL, 70000, 'grace@example.com');
INSERT INTO student VALUES (8, 'Hank', NULL, '2022-06-10', 'EEE', 'AEC', 65000, NULL);
INSERT INTO student VALUES (9, 'Ivy', 20, NULL, NULL, 'ACOE', NULL, 'ivy@example.com');
INSERT INTO student VALUES (10, 'Jack', 23, '2023-02-05', 'CSE', NULL, 85000, 'jack@example.com');

INSERT INTO student VALUES (11, 'Kate', 17, '2022-11-20', 'IT', 'ACET', 90000, 'kate@example.com');
INSERT INTO student VALUES (12, 'Leo', NULL, NULL, 'AIML', 'AEC', 45000, NULL);
INSERT INTO student VALUES (13, 'Mia', 24, '2023-03-18', 'DS', NULL, NULL, 'mia@example.com');
INSERT INTO student VALUES (14, 'Nina', 19, NULL, 'IoT', 'ACOE', 35000, NULL);
INSERT INTO student VALUES (15, 'Oscar', NULL, '2022-10-25', 'ECE', 'AEC', 50000, 'oscar@example.com');
INSERT INTO student VALUES (16, 'Paul', 20, NULL, 'EEE', 'ACET', NULL, 'paul@example.com');
INSERT INTO student VALUES (17, 'Quinn', 22, '2023-04-12', 'CSE', 'ACOE', 75000, NULL);
INSERT INTO student VALUES (18, 'Rachel', 18, NULL, 'IT', NULL, 60000, 'rachel@example.com');
INSERT INTO student VALUES (19, 'Sam', NULL, '2023-06-08', 'AIML', 'AEC', 40000, NULL);
INSERT INTO student VALUES (20, 'Tina', 21, NULL, 'DS', 'ACET', NULL, 'tina@example.com');

INSERT INTO student VALUES (21, 'Uma', 25, '2022-07-15', 'IoT', 'ACOE', 50000, 'uma@example.com');
INSERT INTO student VALUES (22, 'Victor', NULL, '2023-08-10', 'ECE', 'AEC', 70000, NULL);
INSERT INTO student VALUES (23, 'Wendy', 19, NULL, 'EEE', 'ACET', NULL, 'wendy@example.com');
INSERT INTO student VALUES (24, 'Xander', 23, '2022-09-20', NULL, 'ACOE', 60000, 'xander@example.com');
INSERT INTO student VALUES (25, 'Yara', NULL, NULL, 'CSE', NULL, 80000, NULL);
INSERT INTO student VALUES (26, 'Zane', 17, '2023-01-15', 'IT', 'AEC', NULL, 'zane@example.com');
INSERT INTO student VALUES (27, 'Aaron', 20, NULL, 'AIML', 'ACET', 30000, 'aaron@example.com');
INSERT INTO student VALUES (28, 'Bella', NULL, '2023-05-25', 'DS', 'ACOE', 55000, NULL);
INSERT INTO student VALUES (29, 'Caleb', 22, NULL, 'IoT', NULL, 75000, 'caleb@example.com');
INSERT INTO student VALUES (30, 'Diana', 18, '2023-04-18', 'ECE', 'AEC', NULL, 'diana@example.com');

INSERT INTO student VALUES (31, 'Ethan', NULL, '2022-12-15', 'EEE', 'ACET', 65000, NULL);
INSERT INTO student VALUES (32, 'Fiona', 21, NULL, NULL, 'ACOE', 45000, 'fiona@example.com');
INSERT INTO student VALUES (33, 'George', 24, '2023-02-28', 'CSE', 'AEC', NULL, NULL);
INSERT INTO student VALUES (34, 'Holly', 19, NULL, 'IT', 'ACET', 90000, 'holly@example.com');
INSERT INTO student VALUES (35, 'Ian', NULL, '2022-08-22', 'AIML', NULL, 50000, 'ian@example.com');
INSERT INTO student VALUES (36, 'Jill', 20, NULL, 'DS', 'ACOE', NULL, NULL);
INSERT INTO student VALUES (37, 'Karl', 23, '2023-06-12', 'IoT', 'AEC', 75000, 'karl@example.com');
INSERT INTO student VALUES (38, 'Lily', 18, NULL, 'ECE', 'ACET', 55000, NULL);
INSERT INTO student VALUES (39, 'Mark', NULL, '2022-10-10', 'EEE', NULL, NULL, 'mark@example.com');
INSERT INTO student VALUES (40, 'Nora', 22, NULL, 'CSE', 'ACOE', 80000, NULL);

INSERT INTO student VALUES (41, 'Olivia', 25, '2023-03-15', NULL, 'AEC', 60000, 'olivia@example.com');
INSERT INTO student VALUES (42, 'Patrick', NULL, NULL, 'IT', 'ACET', 45000, 'patrick@example.com');
INSERT INTO student VALUES (43, 'Queenie', 19, '2022-11-10', 'AIML', 'ACOE', NULL, NULL);
INSERT INTO student VALUES (44, 'Ray', 20, NULL, 'DS', 'AEC', 55000, 'ray@example.com');
INSERT INTO student VALUES (45, 'Sophia', NULL, '2023-05-18', 'IoT', NULL, NULL, 'sophia@example.com');
INSERT INTO student VALUES (46, 'Tom', 23, NULL, 'ECE', 'ACET', 90000, NULL);
INSERT INTO student VALUES (47, 'Ursula', 18, '2022-09-15', 'EEE', 'ACOE', 40000, NULL);
INSERT INTO student VALUES (48, 'Victor', NULL, NULL, 'CSE', NULL, 70000, 'victor@example.com');
INSERT INTO student VALUES (49, 'Willow', 21, '2023-08-22', 'IT', 'AEC', NULL, 'willow@example.com');
INSERT INTO student VALUES (50, 'Xena', 17, NULL, 'AIML', 'ACET', 30000, NULL);
