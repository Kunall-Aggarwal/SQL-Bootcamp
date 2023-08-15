-- SELECT * FROM film;



-- 				AGGREGATE FUNCTION

-- SELECT MIN(replacement_cost) FROM film;
-- SELECT MAX(replacement_cost) FROM film;
-- SELECT MIN(replacement_cost), MAX(replacement_cost) FROM film;
-- SELECT COUNT(*) FROM film;
-- SELECT AVG(replacement_cost) FROM film;
-- SELECT ROUND(AVG(replacement_cost),2) FROM film;
-- SELECT ROUND(AVG(replacement_cost),4) FROM film;
-- SELECT SUM(replacement_cost) FROM film;





-- 				GROUP BY



-- *******		NOTE: 	GROUP BY clause must appear directly after a FROM statement
-- 							or  WHERE statement 

-- 				Example: 1)	SELECT category_col, AGG(data_col) 
-- 							FROM table
-- 							GROUP BY category_col

-- 						 2)	SELECT category_col, AGG(data_col) 
-- 							FROM table 
-- 							WHERE category_col != 'A'
-- 							GROUP BY category_col


-- *******		NOTE: 	In SELECT statement, Columns must either have an AGG function 
-- 							on them or must have a GROUP BY call 

-- 				Example: 1)	SELECT company, division, SUM(sales) 
-- 							FROM finance_table 
-- 							GROUP BY company, division


-- *******		NOTE: 	WHERE statement should not refer to the AGG result
-- 							later we will learn to use HAVING to filter on those

-- 				Example: 1)	SELECT company, division, SUM(sales) 
-- 							FROM finance_table 
-- 							WHERE division IN ('marketing', 'transport')
-- 							GROUP BY company, division


-- *******		NOTE: 	If you want to sort result based on the AGG,
-- 							make sure to reference the entire AGG function

-- 				Example: 1)	SELECT company, SUM(sales) 
-- 							FROM finance_table 
-- 							GROUP BY company, division
-- 							ORDER BY SUM(sales)
-- 							LIMIT 10



-- SELECT customer_id FROM payment GROUP BY customer_id ORDER BY customer_id;
-- SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id;
-- SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount) DESC;
-- SELECT customer_id, COUNT(amount) FROM payment GROUP BY customer_id ORDER BY COUNT(amount) DESC;

-- SELECT customer_id, staff_id, SUM(amount) FROM payment 
-- GROUP BY staff_id, customer_id
-- ORDER BY customer_id;

-- SELECT DATE(payment_date), SUM(amount) FROM payment 
-- GROUP BY DATE(payment_date) ORDER BY SUM(amount) DESC;





-- 				GROUP BY CHALLENGE

-- SELECT staff_id, COUNT(amount) FROM payment GROUP BY staff_id ORDER BY COUNT(amount) DESC;

-- SELECT rating, ROUND(AVG(replacement_cost),2) FROM film 
-- GROUP BY rating ORDER BY ROUND(AVG(replacement_cost),2);

-- SELECT customer_id, SUM(amount) FROM payment 
-- GROUP BY customer_id ORDER BY SUM(amount) DESC LIMIT 5;





-- 				HAVING

-- *****		NOTE: 	We have already seen that we can filter the columns before 
-- 						executing the GROUP BY clause, but how do we filter the 
-- 						AGG function.
						
-- 						(eg: 	SELECT col, SUM(amount) FROM payment
-- 									 		WHERE col != 'Google'
-- 									 		GROUP BY col)

-- 				NOTE:	We use HAVING clause for filtering the AGG function.

-- SELECT customer_id, SUM(amount) FROM payment 
-- WHERE customer_id NOT IN (184, 87, 477)
-- GROUP BY customer_id;

-- SELECT customer_id, SUM(amount) FROM payment 
-- GROUP BY customer_id
-- HAVING SUM(amount) > 100;


-- 		SELECT store_id, COUNT(customer_id) FROM customer
-- 		GROUP BY store_id HAVING COUNT(customer_id) > 300;

-- 					SAME AS BELOW

-- 		SELECT store_id, COUNT(*) FROM customer
-- 		GROUP BY store_id HAVING COUNT(*) > 300;





-- 				HAVING CHALLENGE

-- SELECT customer_id, COUNT(amount) FROM payment
-- GROUP BY customer_id HAVING COUNT(amount) >=40;

-- SELECT customer_id, SUM(amount) FROM payment
-- WHERE staff_id = 2 GROUP BY customer_id 
-- HAVING SUM(amount) > 100;