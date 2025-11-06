-- 4NF violation example
-- If a table is already in 3NF and doesn't contain
-- Any multi-valued dependencies, then it's in 4NF

CREATE TABLE aspirants
(
    a_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    age NUMBER,
    email VARCHAR2(50)
);

INSERT INTO aspirants (a_id, name, age, email) VALUES (101, 'Alex King', 22, 'alex@email.com');
INSERT INTO aspirants (a_id, name, age, email) VALUES (102, 'Sara Khan', 25, 'sara@email.com');
INSERT INTO aspirants (a_id, name, age, email) VALUES (103, 'Mike Chen', 19, 'mike@email.com');
INSERT INTO aspirants (a_id, name, age, email) VALUES (104, 'Lena Ortiz', 28, 'lena@email.com');

SELECT * FROM aspirants;

CREATE TABLE aspirant_interests
(
    aspirant_id NUMBER REFERENCES aspirants(a_id),
    skill VARCHAR2(50),
    hobby VARCHAR2(100)
);

INSERT INTO aspirant_interests VALUES(101, 'Java', 'Skating');
INSERT INTO aspirant_interests VALUES(101, 'Python', 'Gaming');
INSERT INTO aspirant_interests VALUES(101, 'UI/UX', 'Skating');

INSERT INTO aspirant_interests VALUES (102, 'Java', 'Reading');
INSERT INTO aspirant_interests VALUES (102, 'Java', 'Cooking');
INSERT INTO aspirant_interests VALUES (102, 'Java', 'Yoga');

INSERT INTO aspirant_interests VALUES (103, 'Design', 'Drawing');
INSERT INTO aspirant_interests VALUES (103, 'UI/UX', 'Drawing');

INSERT INTO aspirant_interests VALUES (104, 'Testing', 'Running');
INSERT INTO aspirant_interests VALUES (104, 'Leadership', 'Guitar');
INSERT INTO aspirant_interests VALUES (104, 'C++', 'Sailing');

SELECT * FROM aspirant_interests;


-- Trying to fix 4 NF violation
-- Step 1: Create a table with aspirant_skills
CREATE TABLE aspirant_skills AS
SELECT DISTINCT aspirant_id, skill
FROM aspirant_interests;

-- 
SELECT * FROM aspirant_skills;

-- Set aspirant_id aspirant_skill table as fk
-- Referential Integrity
-- Ensure an aspirant appers in aspirant table
ALTER TABLE aspirant_skills
ADD CONSTRAINT asp_fk
FOREIGN KEY(aspirant_id)
REFERENCES aspirants(a_id);

-- Making (aspirant_id, skill) as composite pk
ALTER TABLE aspirant_skills
ADD CONSTRAINT skill_pk
PRIMARY KEY(aspirant_id, skill);

-- Create aspirants_skills table
CREATE TABLE aspirant_hobbies AS
SELECT DISTINCT aspirant_id, hobby FROM
aspirant_interests;

SELECT * FROM aspirant_hobbies;

-- Set aspirant_id as fk
-- in aspirant_hobbies table
ALTER TABLE aspirant_hobbies
ADD CONSTRAINT asp_hobby_fk
FOREIGN KEY(aspirant_id)
REFERENCES aspirants(a_id);

-- Set (aspirant_id, hobby) as composite pk
ALTER TABLE aspirant_hobbies
ADD CONSTRAINT asp_hob_pk
PRIMARY KEY(aspirant_id, hobby);
-- Drop aspirant_interests at the end of data
-- migration
DROP TABLE aspirant_interests;

SELECT * FROM aspirants;
SELECT * FROM aspirant_skills;
SELECT * FROM aspirant_hobbies;



