CREATE DATABASE new_clg;

CREATE TABLE st(
stu_id INT PRIMARY KEY,
name VARCHAR(60)
);

INSERT INTO st
VALUES 
(201, 'ANIL'),
(202, 'ROHAN'),
(203, 'RAHUL');

SELECT * FROM st;

CREATE TABLE course(
stu_id INT PRIMARY KEY,
cou VARCHAR(40)
);

INSERT INTO course
VALUES 
(201, 'ENG'),
(205, 'MATH'),
(203, 'SCI'),
(207, 'COMSCI');

SELECT * FROM course;

SELECT *
FROM st
INNER JOIN course
ON st.stu_id = course.stu_id;

SELECT * 
FROM st
LEFT JOIN course
ON st.stu_id = course.stu_id;

SELECT * 
FROM st AS a
RIGHT JOIN course AS b
ON a.stu_id = b.stu_id;

SELECT stu_id FROM st
UNION 
SELECT stu_id FROM course;


SELECT stu_id FROM st
UNION ALL
SELECT stu_id FROM course;

