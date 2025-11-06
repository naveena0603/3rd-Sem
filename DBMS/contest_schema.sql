-- DROP TABLE users
CREATE TABLE users(
    u_id NUMBER PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    gender VARCHAR2(10) NOT NULL,
    dob DATE,
    rating NUMBER
);
-- Inserts into users table
INSERT INTO users VALUES(1, 'Alice', 'Female', TO_DATE('12-08-2000', 'DD-MM-YYYY'), 1347);
INSERT INTO users VALUES(2, 'Bob', 'Male', TO_DATE('16-12-1987', 'DD-MM-YYYY'), 1671);
INSERT INTO users VALUES(3, 'Charlie', 'Male', TO_DATE('01-03-2002', 'DD-MM-YYYY'), 1454);
INSERT INTO users VALUES(4, 'Daina', 'Female', TO_DATE('27-04-1992', 'DD-MM-YYYY'), 1201);
INSERT INTO users VALUES(5, 'Edward', 'Male', TO_DATE('31-07-1974', 'DD-MM-YYYY'), 2562);
INSERT INTO users VALUES(6, 'Faria', 'Female', TO_DATE('07-01-2005', 'DD-MM-YYYY'), 1837);
INSERT INTO users VALUES(7, 'Garry', 'Male', TO_DATE('19-11-1996', 'DD-MM-YYYY'), 2124);

SELECT * FROM users;

-- DROP TABLE contest;
CREATE TABLE contest(
    c_id VARCHAR2(10) PRIMARY KEY,
    c_name VARCHAR2(50),
    c_type VARCHAR2(50),
    c_date DATE
);

INSERT INTO contest VALUES('S-147', 'Starters-147', 'Weekly', TO_DATE('18-04-2025', 'DD-MM-YYYY'));
INSERT INTO contest VALUES('S-154', 'Starters-154', 'Weekly', TO_DATE('28-06-2025', 'DD-MM-YYYY'));
INSERT INTO contest VALUES('C-101', 'Cook-Off-October', 'Monthly', TO_DATE('14-10-2016', 'DD-MM-YYYY'));
INSERT INTO contest VALUES('C-174', 'Cook-Off-July', 'Monthly', TO_DATE('24-12-2018', 'DD-MM-YYYY'));
INSERT INTO contest VALUES('R-11', 'Regular-Contest-11', 'Special', TO_DATE('16-04-2020', 'DD-MM-YYYY'));
INSERT INTO contest VALUES('R-79', 'Regular-Contest-79', 'Special', TO_DATE('19-05-2023', 'DD-MM-YYYY'));


SELECT * FROM contest;

-- DROP TABLE question;
CREATE TABLE question(
    q_id NUMBER PRIMARY KEY,
    q_name VARCHAR2(50) NOT NULL,
    rating NUMBER NOT NULL,
    -- Foreign key to represent contest_id
    -- to identify to which contest
    -- the question belongs
    contest_id VARCHAR2(10) REFERENCES contest(c_id)
);


INSERT INTO question VALUES(1, 'Palindrome Check', 847, 'S-147');
INSERT INTO question VALUES(2, 'Prime Factorization', 1540, 'S-147');
INSERT INTO question VALUES(3, 'Binary Search Trees', 1780, 'S-147');
INSERT INTO question VALUES(4, 'Maximum Subarray Sum', 1200, 'S-154');
INSERT INTO question VALUES(5, 'Dynamic Programming Paths', 1900, 'S-154');
INSERT INTO question VALUES(6, 'Greedy Knapsack', 1320, 'S-154');
INSERT INTO question VALUES(7, 'Graph Cycle Detection', 2100, 'C-101');
INSERT INTO question VALUES(8, 'String Anagram Count', 980, 'C-101');
INSERT INTO question VALUES(9, 'Modular Exponentiation', 1650, 'C-174');
INSERT INTO question VALUES(10, 'Disjoint Set Union', 1750, 'C-174');
INSERT INTO question VALUES(11, 'Matrix Spiral Traversal', 1100, 'R-11');
INSERT INTO question VALUES(12, 'Segment Tree Range Queries', 2300, 'R-11');
INSERT INTO question VALUES(13, 'KMP String Matching', 1500, 'R-79');
INSERT INTO question VALUES(14, 'Floyd-Warshall Shortest Paths', 1950, 'R-79');
INSERT INTO question VALUES(15, 'Bitwise AND Subarrays', 1430, 'S-147');
INSERT INTO question VALUES(16, 'Chef and Recipe List', 880, 'S-147');
INSERT INTO question VALUES(17, 'Two Pointer Sum Search', 1200, 'S-147');
INSERT INTO question VALUES(18, 'Game of Stones', 1600, 'S-154');
INSERT INTO question VALUES(19, 'Tree Diameter Problem', 2100, 'S-154');
INSERT INTO question VALUES(20, 'Chef and GCD Queries', 1700, 'S-154');
INSERT INTO question VALUES(21, 'Knight Moves on Chessboard', 1350, 'S-154');
INSERT INTO question VALUES(22, 'Bipartite Graph Check', 1250, 'C-101');
INSERT INTO question VALUES(23, 'Chef and Contest Rating', 980, 'C-101');
INSERT INTO question VALUES(24, 'Largest Rectangle in Histogram', 2000, 'C-101');
INSERT INTO question VALUES(25, 'Matrix Chain Multiplication', 1870, 'C-174');
INSERT INTO question VALUES(26, 'Subarray XOR Maximum', 1930, 'C-174');
INSERT INTO question VALUES(27, 'Number of Islands', 1560, 'R-11');
INSERT INTO question VALUES(28, 'Fast Fibonacci Modulo', 1780, 'R-11');
INSERT INTO question VALUES(29, 'Sliding Window Maximum', 1650, 'R-79');
INSERT INTO question VALUES(30, 'Longest Palindromic Substring', 1480, 'R-79');


-- Associative entity
-- DROP TABLE submissions;
CREATE TABLE submissions(
    sub_id NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
    -- FOREIGN KEY FOR user tables u_id
    user_id NUMBER REFERENCES users(u_id),
    -- FOREIGN KEY FOR question tables q_id
    question_id NUMBER REFERENCES question(q_id),
    sub_time DATE NOT NULL,
    status NUMBER CHECK (status IN (0, 1)),
    language_used VARCHAR2(30) NOT NULL
);


INSERT INTO submissions (user_id, question_id, sub_time, status, language_used) VALUES

(1, 1, TO_DATE('18-04-2025 20:15:32', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(2, 1, TO_DATE('18-04-2025 20:35:14', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(3, 2, TO_DATE('18-04-2025 20:45:12', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(4, 2, TO_DATE('18-04-2025 21:22:09', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(5, 3, TO_DATE('18-04-2025 21:40:28', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(6, 15, TO_DATE('18-04-2025 20:58:45', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(7, 16, TO_DATE('18-04-2025 21:15:52', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(1, 17, TO_DATE('18-04-2025 20:33:19', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(2, 15, TO_DATE('18-04-2025 21:05:14', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(3, 1, TO_DATE('18-04-2025 21:49:55', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),

(4, 4, TO_DATE('28-06-2025 20:17:43', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(5, 5, TO_DATE('28-06-2025 21:05:18', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(6, 6, TO_DATE('28-06-2025 21:49:55', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(7, 18, TO_DATE('28-06-2025 20:33:21', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(1, 19, TO_DATE('28-06-2025 21:15:46', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(2, 20, TO_DATE('28-06-2025 20:22:35', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(3, 21, TO_DATE('28-06-2025 20:47:05', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(4, 4, TO_DATE('28-06-2025 21:37:44', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(5, 20, TO_DATE('28-06-2025 21:58:12', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(6, 6, TO_DATE('28-06-2025 20:56:31', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),

(7, 7, TO_DATE('14-10-2016 20:22:15', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(1, 8, TO_DATE('14-10-2016 20:59:10', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(2, 22, TO_DATE('14-10-2016 21:12:54', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(3, 23, TO_DATE('14-10-2016 20:45:38', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(4, 7, TO_DATE('14-10-2016 21:19:26', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(5, 8, TO_DATE('14-10-2016 20:37:48', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(6, 24, TO_DATE('14-10-2016 21:51:19', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(7, 23, TO_DATE('14-10-2016 20:11:41', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(1, 22, TO_DATE('14-10-2016 21:27:53', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(3, 24, TO_DATE('14-10-2016 20:54:04', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),

(2, 9, TO_DATE('24-12-2018 20:27:19', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(4, 10, TO_DATE('24-12-2018 21:14:03', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(5, 25, TO_DATE('24-12-2018 21:41:29', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(6, 26, TO_DATE('24-12-2018 20:35:14', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(7, 9, TO_DATE('24-12-2018 21:02:47', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(1, 26, TO_DATE('24-12-2018 21:18:39', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(3, 25, TO_DATE('24-12-2018 20:48:54', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(5, 10, TO_DATE('24-12-2018 21:37:20', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(4, 25, TO_DATE('24-12-2018 21:59:52', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(6, 9, TO_DATE('24-12-2018 20:52:43', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),

(7, 11, TO_DATE('16-04-2020 20:32:11', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(1, 12, TO_DATE('16-04-2020 20:58:45', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(2, 27, TO_DATE('16-04-2020 21:17:36', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(3, 28, TO_DATE('16-04-2020 20:45:38', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(4, 11, TO_DATE('16-04-2020 21:15:52', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(5, 12, TO_DATE('16-04-2020 20:33:19', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(6, 27, TO_DATE('16-04-2020 21:05:14', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(7, 28, TO_DATE('16-04-2020 21:49:55', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(1, 27, TO_DATE('16-04-2020 20:21:34', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(3, 28, TO_DATE('16-04-2020 21:36:29', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),

(2, 13, TO_DATE('19-05-2023 20:44:27', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(4, 14, TO_DATE('19-05-2023 21:11:52', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(5, 29, TO_DATE('19-05-2023 21:33:09', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(6, 30, TO_DATE('19-05-2023 21:57:25', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(7, 29, TO_DATE('19-05-2023 20:19:44', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(1, 13, TO_DATE('19-05-2023 21:25:13', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(3, 14, TO_DATE('19-05-2023 20:48:37', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(2, 30, TO_DATE('19-05-2023 21:08:56', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(5, 14, TO_DATE('19-05-2023 20:54:01', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(6, 13, TO_DATE('19-05-2023 21:42:11', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python');


INSERT INTO submissions (user_id, question_id, sub_time, status, language_used) VALUES
(4, 1, TO_DATE('18-04-2025 20:12:44', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(5, 2, TO_DATE('18-04-2025 20:45:21', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(6, 3, TO_DATE('18-04-2025 21:18:56', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(7, 15, TO_DATE('18-04-2025 21:52:30', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(1, 16, TO_DATE('18-04-2025 20:33:18', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(2, 17, TO_DATE('18-04-2025 20:59:12', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(3, 1, TO_DATE('18-04-2025 21:46:42', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(4, 2, TO_DATE('18-04-2025 20:54:09', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(5, 3, TO_DATE('18-04-2025 20:40:31', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(6, 15, TO_DATE('18-04-2025 21:25:45', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python');

INSERT INTO submissions (user_id, question_id, sub_time, status, language_used) VALUES
(7, 4, TO_DATE('28-06-2025 20:16:54', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(1, 5, TO_DATE('28-06-2025 21:12:13', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(2, 6, TO_DATE('28-06-2025 20:53:48', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(3, 18, TO_DATE('28-06-2025 20:25:17', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(4, 19, TO_DATE('28-06-2025 21:38:09', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(5, 20, TO_DATE('28-06-2025 20:42:51', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(6, 21, TO_DATE('28-06-2025 21:54:26', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(7, 4, TO_DATE('28-06-2025 21:05:14', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(1, 20, TO_DATE('28-06-2025 20:30:59', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(2, 5, TO_DATE('28-06-2025 21:47:11', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java');

INSERT INTO submissions (user_id, question_id, sub_time, status, language_used) VALUES
(3, 7, TO_DATE('14-10-2016 20:17:39', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(4, 8, TO_DATE('14-10-2016 20:58:22', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(5, 22, TO_DATE('14-10-2016 20:29:44', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(6, 23, TO_DATE('14-10-2016 21:14:36', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(7, 24, TO_DATE('14-10-2016 20:45:33', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(1, 8, TO_DATE('14-10-2016 21:31:19', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(2, 23, TO_DATE('14-10-2016 21:41:54', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(3, 22, TO_DATE('14-10-2016 20:50:11', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(4, 24, TO_DATE('14-10-2016 21:23:06', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(5, 7, TO_DATE('14-10-2016 20:37:58', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python');

INSERT INTO submissions (user_id, question_id, sub_time, status, language_used) VALUES
(6, 9, TO_DATE('24-12-2018 20:40:15', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(7, 10, TO_DATE('24-12-2018 21:08:46', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(1, 25, TO_DATE('24-12-2018 20:50:34', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(2, 26, TO_DATE('24-12-2018 21:54:58', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(3, 9, TO_DATE('24-12-2018 21:29:14', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(4, 25, TO_DATE('24-12-2018 20:39:56', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(5, 26, TO_DATE('24-12-2018 21:17:28', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(6, 10, TO_DATE('24-12-2018 21:35:49', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(7, 26, TO_DATE('24-12-2018 20:28:12', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(1, 9, TO_DATE('24-12-2018 21:43:53', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python');

INSERT INTO submissions (user_id, question_id, sub_time, status, language_used) VALUES
(2, 11, TO_DATE('16-04-2020 20:15:44', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(3, 12, TO_DATE('16-04-2020 21:03:19', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(4, 27, TO_DATE('16-04-2020 20:42:33', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(5, 28, TO_DATE('16-04-2020 21:52:22', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(6, 11, TO_DATE('16-04-2020 21:19:48', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(7, 12, TO_DATE('16-04-2020 20:38:04', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(1, 28, TO_DATE('16-04-2020 21:11:31', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(2, 27, TO_DATE('16-04-2020 20:54:13', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(3, 28, TO_DATE('16-04-2020 21:47:55', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(4, 12, TO_DATE('16-04-2020 21:23:59', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java');

INSERT INTO submissions (user_id, question_id, sub_time, status, language_used) VALUES
(5, 13, TO_DATE('19-05-2023 20:31:05', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(6, 14, TO_DATE('19-05-2023 20:58:26', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(7, 29, TO_DATE('19-05-2023 21:22:18', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(1, 30, TO_DATE('19-05-2023 20:47:39', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(2, 13, TO_DATE('19-05-2023 21:13:57', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(3, 14, TO_DATE('19-05-2023 21:36:41', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(4, 29, TO_DATE('19-05-2023 20:21:17', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(5, 30, TO_DATE('19-05-2023 20:56:08', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(6, 13, TO_DATE('19-05-2023 21:48:52', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(7, 14, TO_DATE('19-05-2023 20:40:22', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++');

INSERT INTO submissions (user_id, question_id, sub_time, status, language_used) VALUES
(1, 1, TO_DATE('18-04-2025 20:02:31', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(3, 2, TO_DATE('18-04-2025 20:12:09', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(5, 3, TO_DATE('18-04-2025 20:21:55', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(6, 15, TO_DATE('18-04-2025 20:34:17', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(7, 16, TO_DATE('18-04-2025 20:48:09', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(2, 17, TO_DATE('18-04-2025 20:53:58', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(4, 1, TO_DATE('18-04-2025 21:05:33', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(1, 2, TO_DATE('18-04-2025 21:15:42', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(5, 3, TO_DATE('18-04-2025 21:24:16', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(6, 15, TO_DATE('18-04-2025 21:33:07', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(7, 17, TO_DATE('18-04-2025 21:44:12', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(3, 1, TO_DATE('18-04-2025 21:56:45', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(2, 16, TO_DATE('18-04-2025 20:06:27', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(4, 2, TO_DATE('18-04-2025 20:18:43', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(5, 17, TO_DATE('18-04-2025 20:41:59', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(1, 15, TO_DATE('18-04-2025 20:59:36', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(6, 1, TO_DATE('18-04-2025 21:11:28', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(7, 2, TO_DATE('18-04-2025 21:25:49', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(3, 3, TO_DATE('18-04-2025 21:39:15', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(4, 17, TO_DATE('18-04-2025 21:51:44', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(5, 15, TO_DATE('18-04-2025 20:08:52', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(1, 3, TO_DATE('18-04-2025 20:15:03', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(2, 1, TO_DATE('18-04-2025 20:26:39', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(6, 17, TO_DATE('18-04-2025 20:39:51', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(7, 3, TO_DATE('18-04-2025 21:49:26', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java');

INSERT INTO submissions (user_id, question_id, sub_time, status, language_used) VALUES
(2, 4, TO_DATE('28-06-2025 20:03:55', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(3, 5, TO_DATE('28-06-2025 20:12:12', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(4, 6, TO_DATE('28-06-2025 20:19:26', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(5, 18, TO_DATE('28-06-2025 20:36:11', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(6, 19, TO_DATE('28-06-2025 20:45:47', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(1, 20, TO_DATE('28-06-2025 21:01:55', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(7, 21, TO_DATE('28-06-2025 21:12:36', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(2, 5, TO_DATE('28-06-2025 21:25:48', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(3, 6, TO_DATE('28-06-2025 21:37:54', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(4, 4, TO_DATE('28-06-2025 21:49:39', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C');

INSERT INTO submissions (user_id, question_id, sub_time, status, language_used) VALUES
(5, 7, TO_DATE('14-10-2016 20:14:42', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(6, 8, TO_DATE('14-10-2016 20:31:58', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(7, 22, TO_DATE('14-10-2016 20:44:17', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(1, 23, TO_DATE('14-10-2016 20:53:36', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(2, 24, TO_DATE('14-10-2016 21:07:22', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(3, 7, TO_DATE('14-10-2016 21:21:18', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++');

INSERT INTO submissions (user_id, question_id, sub_time, status, language_used) VALUES
(4, 9, TO_DATE('24-12-2018 20:15:09', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(5, 10, TO_DATE('24-12-2018 20:27:44', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(6, 25, TO_DATE('24-12-2018 20:42:15', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(7, 26, TO_DATE('24-12-2018 20:53:39', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++');

INSERT INTO submissions (user_id, question_id, sub_time, status, language_used) VALUES
(1, 11, TO_DATE('16-04-2020 20:08:34', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(2, 12, TO_DATE('16-04-2020 20:21:49', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Python'),
(3, 27, TO_DATE('16-04-2020 20:39:55', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(4, 28, TO_DATE('16-04-2020 20:54:16', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(5, 11, TO_DATE('16-04-2020 21:11:23', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(6, 12, TO_DATE('16-04-2020 21:24:31', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(7, 27, TO_DATE('16-04-2020 21:37:49', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(1, 28, TO_DATE('16-04-2020 21:50:41', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++');

INSERT INTO submissions (user_id, question_id, sub_time, status, language_used) VALUES
(2, 13, TO_DATE('19-05-2023 20:03:12', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(3, 14, TO_DATE('19-05-2023 20:14:19', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(4, 29, TO_DATE('19-05-2023 20:29:53', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C'),
(5, 30, TO_DATE('19-05-2023 20:41:16', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C++'),
(6, 13, TO_DATE('19-05-2023 20:55:47', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Java'),
(7, 14, TO_DATE('19-05-2023 21:08:32', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python'),
(1, 29, TO_DATE('19-05-2023 21:21:29', 'DD-MM-YYYY HH24:MI:SS'), 0, 'C'),
(2, 30, TO_DATE('19-05-2023 21:35:45', 'DD-MM-YYYY HH24:MI:SS'), 1, 'C++'),
(3, 13, TO_DATE('19-05-2023 21:47:55', 'DD-MM-YYYY HH24:MI:SS'), 0, 'Java'),
(4, 14, TO_DATE('19-05-2023 21:59:11', 'DD-MM-YYYY HH24:MI:SS'), 1, 'Python');
