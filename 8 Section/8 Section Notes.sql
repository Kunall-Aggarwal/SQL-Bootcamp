-- 					CONSTRAINTS

-- *****		Most Common: 	1) 	NOT NULL
-- 							2)	UNIQUE
-- 							3)	PRIMARY KEY
-- 							4)	FOREIGN KEY
-- 							5)	CHECK
							
							



-- 					CREATE TABLE

-- *****	Syntax:		1)	CREATE TABLE table_name(
-- 							col_name TYPE col_constraint,
-- 							col_name TYPE col_constraint,
-- 							table_constraint table_constraint
-- 							) INHERITS existing_table_name;
-- 					2)	CREATE TABLE table_name(
-- 							col_name TYPE col_constraint,
-- 							col_name TYPE col_constraint,
-- 							);
						
-- 		Example:	1)	CREATE TABLE players(
-- 						 	player_id SERIAL PRIMARY KEY,
-- 							age SMALLINT NOT NULL,
-- 							);


-- CREATE TABLE account(
-- 	user_id SERIAL PRIMARY KEY,
-- 	username VARCHAR(50) UNIQUE NOT NULL,
-- 	password VARCHAR(50) NOT NULL,
-- 	email VARCHAR(250) UNIQUE NOT NULL,
-- 	created_on TIMESTAMP NOT NULL,
-- 	last_login TIMESTAMP 
-- );

-- CREATE TABLE job(
-- 	job_id SERIAL PRIMARY KEY,
-- 	job_name VARCHAR(200) UNIQUE NOT NULL
-- );

-- CREATE TABLE account_job(
-- 	user_id INTEGER REFERENCES account(user_id),
-- 	job_id INTEGER REFERENCES job(job_id),
-- 	hire_date TIMESTAMP
-- );






-- 					INSERT
					
-- *****	Syntax:	1)	INSERT INTO table (col1, col2, ...)
-- 					VALUES
-- 					(val1, val2, ...),
-- 					(val1, val2, ...), ... ;
				
-- 				2)	INSERT INTO table (col1, col2, ...)
-- 					SELECT col1, col2, ...
-- 					FROM another_table
-- 					WHERE condition;

-- INSERT INTO account(username, password, email, created_on)
-- VALUES
-- ('Jose', 'password', 'jose@mail.com', CURRENT_TIMESTAMP);

-- INSERT INTO job(job_name)
-- VALUES
-- ('Astronaut')

-- INSERT INTO job(job_name)
-- VALUES
-- ('President')

-- INSERT INTO account_job(user_id, job_id, hire_date)
-- VALUES
-- (1, 1, CURRENT_TIMESTAMP)





-- 					UPDATE

-- *****	Syntax:	1)	UPDATE table
-- 					SET col1 = val1,
-- 						col2 = val2, ...
-- 					WHERE
-- 						condition;
						
-- 				2)	UPDATE table
-- 					SET col1 = val1,
-- 						col2 = val2, ...

-- 				3)	UPDATE table
-- 					SET col1 = another_col
					
-- 				4)	UPDATE tableA
-- 					SET original_col = tableB.new_col
-- 					FROM tableB
-- 					WHERE tableA.id = tableB.id
					
-- 				5)	UPDATE account
-- 					SET last_login = created_on
-- 					RETURNING account_id, last_login
				
-- UPDATE account
-- SET last_login = CURRENT_TIMESTAMP;

-- UPDATE account 
-- SET last_login = created_on;

-- UPDATE account_job
-- SET hire_date = account.created_on
-- FROM account
-- WHERE account_job.user_id = account.user_id;

-- UPDATE account 
-- SET last_login = CURRENT_TIMESTAMP
-- RETURNING user_id, email, created_on, last_login;





				
-- 					DELETE

-- *****	Syntax:	1)	DELETE FROM table
-- 					WHERE row_id = 1
				
-- 					2)	DELETE FROM tableA
-- 						USING tableB
-- 						WHERE tableA.id = tableB.id

-- 					3)	DELETE FROM table

-- 					4)	DELETE FROM job
-- 						WHERE job_name = 'Cowboy'
-- 						RETURNING job_id, job_name;

				
-- INSERT INTO job(job_name)
-- VALUES
-- ('Cowboy')

-- DELETE FROM job
-- WHERE job_name = 'Cowboy'
-- RETURNING job_id, job_name;





-- 					ALTER

-- *****	Syntax:		1)	ALTER TABLE table_name action
					
-- 					2)	ALTER TABLE table_name 
-- 						ADD COLUMN new_col TYPE
					
-- 					3)	ALTER TABLE table_name 
-- 						DROP COLUMN new_col
					
-- 					4)	ALTER TABLE table_name 
-- 						ALTER COLUMN new_col 
-- 						SET DEFAULT value	/	DROP DEFAULT	/
-- 						SET NOT NULL	/	DROP NOT NULL	/	
-- 						ADD CONSTRAINT constaint_name

-- CREATE TABLE information(
-- 	info_id SERIAL PRIMARY KEY,
-- 	title VARCHAR(500) NOT NULL,
-- 	person VARCHAR(50) NOT NULL UNIQUE 
-- );

-- ALTER TABLE information
-- RENAME TO new_info;

-- ALTER TABLE new_info
-- RENAME COLUMN person to people;

-- INSERT INTO new_info(title)				-- Gives error
-- VALUES
-- ('some new title')

-- ALTER TABLE new_info
-- ALTER COLUMN people DROP NOT NULL;

-- INSERT INTO new_info(title)
-- VALUES
-- ('some new title')

-- ALTER TABLE new_info
-- ALTER COLUMN people SET NOT NULL;




-- 					DROP

-- *****	Syntax:	1)	ALTER TABLE table_name
-- 						DROP COLUMN col_name;

-- 					2)	ALTER TABLE table_name
-- 						DROP COLUMN col_name CASCADE;
						
-- 						-> to delete all entries related to the ID
						
-- 					3)	ALTER TABLE table_name
-- 						DROP COLUMN IF EXISTS col_name;
						
-- 						-> to avoid error if no such column exists
					
-- 					4)	ALTER TABLE table_name
-- 						DROP COLUMN col_name,
-- 						DROP COLUMN col_name, ... ;

-- ALTER TABLE new_info
-- DROP COLUMN people;

-- ALTER TABLE new_info
-- DROP COLUMN IF EXISTS people;





-- 						CHECK

-- *****	Syntax:	1) CREATE TABLE example(
-- 						ex_id SERIAL PRIMARY KEY,
-- 						age SMALLINT CHECK(age > 21),
-- 						parent_age SMALLINT CHECK(parent_age > age)
-- 					);

-- CREATE TABLE employees(
-- 	emp_id SERIAL PRIMARY KEY,
-- 	first_name VARCHAR(50) NOT NULL,
-- 	last_name VARCHAR(50) NOT NULL,
-- 	birthdate DATE CHECK(birthdate > '1900-01-01'),
-- 	hire_date DATE CHECK(hire_date > birthdate),
-- 	salary INTEGER CHECK(salary > 0)
-- );

-- INSERT INTO employees(first_name, last_name, birthdate, hire_date, salary)
-- VALUES ('Jose', 'Portilla', '1890-11-03', '2010-01-01', 100);

-- INSERT INTO employees(first_name, last_name, birthdate, hire_date, salary)
-- VALUES ('Sammy', 'Smith', '1990-11-03', '2010-01-01', -100);

-- INSERT INTO employees(first_name, last_name, birthdate, hire_date, salary)
-- VALUES ('Sammy', 'Smith', '1990-11-03', '2010-01-01', 100);

-- INSERT INTO employees(first_name, last_name, birthdate, hire_date, salary)
-- VALUES ('Jose', 'Portilla', '1990-11-03', '2010-01-01', 100);
