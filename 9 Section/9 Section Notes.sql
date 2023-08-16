-- 					ASSESSMENT 3

-- CREATE TABLE students(
-- 	student_id SERIAL PRIMARY KEY,
-- 	first_name VARCHAR(50) NOT NULL,
-- 	last_name VARCHAR(50) NOT NULL,
-- 	homeroom_number INTEGER,
-- 	phone VARCHAR(20) NOT NULL UNIQUE,
-- 	email VARCHAR(250) UNIQUE,
-- 	graduation_year SMALLINT	
-- );

-- CREATE TABLE teachers(
-- 	teacher_id SERIAL PRIMARY KEY,
-- 	first_name VARCHAR(50) NOT NULL,
-- 	last_name VARCHAR(50) NOT NULL,
-- 	homeroom_number INTEGER,
-- 	department VARCHAR(50),
-- 	phone VARCHAR(15) NOT NULL UNIQUE,
-- 	email VARCHAR(250) UNIQUE
-- );

-- INSERT INTO students (first_name, last_name, phone, graduation_year, homeroom_number)
-- VALUES
-- ('Mark', 'Watney', 7775551234, 2035, 5);

-- INSERT INTO teachers (first_name, last_name, homeroom_number, department, email, phone)
-- VALUES
-- ('Jonas', 'Salk', 5, 'Biology', 'jsalk@school.org', 7775554321);

-- SELECT * FROM students;

SELECT * FROM teachers;