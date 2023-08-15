-- 						TIMESTAMPS

-- *****		Types: 	1)	TIME			->		Contains Time
-- 						2)	DATE			->		Contains Date
-- 						3)	TIMESTAMP		->		Contains Date & Time
-- 						4)	TIMESTAMPTZ		->		Contains Date, Time & Time-zone


-- SHOW ALL 					--> ALL Information 

-- SHOW TIMEZONE				--> TIMEZONE information you are working on

-- SELECT NOW()					--> TIMESTAMP information for Right Now

-- SELECT TIMEOFDAY()			--> Same as SELECT NOW() but return type is String

-- SELECT CURRENT_TIME			--> Current-Time Information only

-- SELECT CURRENT_DATE			--> Current-Date Information only





-- 					EXTRACT

-- *****		Note:	Allows you to extract or obtain a sub-component of DATE value
-- 							1)	YEAR
-- 							2)	MONTH
-- 							3)	DAY
-- 							4)	WEEK
-- 							5)	QUARTER
-- 
-- *****		Syntax:		EXTRACT(YEAR FROM date_col)

-- SELECT EXTRACT(YEAR FROM payment_date) AS year FROM payment;
-- 
-- SELECT EXTRACT(MONTH FROM payment_date) AS pay_month FROM payment;
-- 
-- SELECT EXTRACT(QUARTER FROM payment_date) AS pay_quarter FROM payment;






-- 					AGE

-- *****		Note:	Calculates and Returns the current age given a TimeStamp
-- 
-- *****		Syntax:			AGE(date_col)
-- 								->	13 years 1 mon 5 days 01:34:13.003423

-- SELECT AGE(payment_date) FROM payment;





-- 					TO_CHAR()

-- *****		Note:	1)	General function to convert data-types into text
-- 						2)	Useful for TIMESTAMP formatting
-- 
-- *****		Syntax:			TO_CHAR(date_col, 'mm-dd-yyyy')


-- SELECT TO_CHAR(payment_date, 'MON-YYYY') FROM payment;
-- 
-- SELECT TO_CHAR(payment_date, 'MON    YYYY') FROM payment;
-- 
-- SELECT TO_CHAR(payment_date, 'mon/dd/yyyy') FROM payment;
-- 
-- SELECT TO_CHAR(payment_date, 'mm/dd/yyyy') FROM payment;
-- 
-- SELECT TO_CHAR(payment_date, 'mm-dd-yyyy') FROM payment;
-- 
-- SELECT TO_CHAR(payment_date, 'dd-mm-yyyy') FROM payment;





-- 				TIMESTAMPS & EXTRACT CHALLENGE

-- SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH')) FROM payment;
-- 
-- SELECT COUNT(*) FROM payment WHERE EXTRACT(DAY FROM payment_date) = 1;






-- 					MATHEMATICAL FUNCTIONS & OPERATORS

-- SELECT *, ROUND(rental_rate/replacement_cost,4) * 100 AS percent_cost FROM film;
-- 
-- SELECT film_id, title, 0.1 * replacement_cost AS deposit FROM film;







-- 					STRING FUNCTIONS & OPERATORS

-- SELECT LENGTH(first_name) FROM customer;

-- SELECT first_name || last_name FROM customer;
-- SELECT first_name || ' ' || last_name FROM customer;
-- SELECT first_name || ' - ' || last_name AS full_name FROM customer;

-- SELECT UPPER(first_name) || ' - ' || UPPER(last_name) AS full_name 
-- FROM customer;

-- SELECT LOWER(LEFT(first_name,1)) || LOWER(last_name) || '@gmail.com' AS custom_email 
-- FROM customer;






-- 					SUB-QUERY

-- *****			Example:	1)	SELECT student, grade FROM test_scores
-- 									WHERE grade > (SELECT AVG(grade) 
-- 											   		FROM test_scores)

-- 								2)	SELECT student, grade FROM test_scores
-- 									WHERE grade IN (SELECT student 
-- 													FROM honor_roll_table)
											   

-- SELECT title, rental_rate FROM film
-- WHERE rental_rate > (SELECT AVG(rental_rate) FROM film)

-- SELECT film_id, title FROM film
-- WHERE film_id IN
-- (SELECT inventory.film_id FROM rental 
-- INNER JOIN inventory 
-- ON rental.inventory_id = inventory.inventory_id
-- WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
-- ORDER BY film_id




					
					
-- 					EXISTS

-- SELECT first_name, last_name 
-- FROM customer AS c
-- WHERE EXISTS 
-- (SELECT * FROM payment AS p
-- WHERE p.customer_id = c.customer_id
-- AND p.amount > 11);

-- SELECT first_name, last_name 
-- FROM customer AS c
-- WHERE NOT EXISTS 
-- (SELECT * FROM payment AS p
-- WHERE p.customer_id = c.customer_id
-- AND p.amount > 11);






-- 					SELF JOIN

-- *****		Syntax:		SELECT tableA.col, tableB.col 
-- 							FROM table AS tableA
-- 							JOIN table AS tableB ON
-- 							tableA.some_col = tableB.other_col

SELECT f1.title, f2.title, f1.length 
FROM film AS f1
INNER JOIN film AS f2
ON f1.film_id != f2.film_id 
AND f1.length = f2.length
