-- 				AS 


-- *****		NOTE:	You can only use AS in the SELECT statement,
-- 						meaning we cannot use it inside WHERE operator

-- *****		Syntax: 1)		SELECT column_name AS new_name FROM table;
-- 						2)		SELECT SUM(column) AS new_name FROM table;

-- SELECT amount AS rental_price FROM payment;
-- SELECT SUM(amount) AS net_revenue FROM payment;
-- SELECT COUNT(*) AS num_transaction FROM payment;
-- SELECT customer_id, SUM(amount) AS total_spend FROM payment GROUP BY customer_id;

-- *****		NOTE:	AS creates an alias at the very end of the query execution
-- 						thus the query below throws error,
-- 
-- 						eg:1)	X	SELECT customer_id, SUM(amount) AS total_spend 
-- 									FROM payment GROUP BY customer_id
-- 									HAVING total_spend > 100;
-- 
-- 								->	SELECT customer_id, SUM(amount) AS total_spend 
-- 									FROM payment GROUP BY customer_id
-- 									HAVING SUM(amount) > 100;
-- 
-- 
-- 							2)	X	SELECT customer_id, first_name AS new_name 
-- 									FROM customer WHERE new_name != 'Jared';
-- 
-- 								->	SELECT customer_id, first_name AS new_name 
-- 									FROM customer WHERE first_name != 'Jared';





-- 					INNER JOIN

-- *****		Syntax:		SELECT * FROM tableA 
-- 							INNER JOIN tableB 
-- 							ON tableA.col_match = tableB.col_match

-- *****		Example:	1)	SELECT * FROM logins
-- 								INNER JOIN registrations 
-- 								ON logins.name = registrations.name
-- 								
-- 							->	login_id	name	reg_id		name
-- 								
-- 									1		A			2		A
-- 									3		B			3		B

-- 							2)	SELECT login_id, logins.name, reg_id FROM logins
-- 								INNER JOIN registrations 
-- 								ON logins.name = registrations.name
-- 								
-- 							->	login_id	name	reg_id		
-- 								
-- 									1		A			2		
-- 									3		B			3		


-- SELECT payment_id, payment.customer_id, customer.email FROM payment
-- INNER JOIN customer
-- ON payment.customer_id = customer.customer_id;





-- 				OUTER JOIN

-- *****		Types: 	1) FULL OUTER JOIN
-- 						2) LEFT OUTER JOIN / LEFT JOIN
-- 						3) RIGHT OUTER JOIN	/ RIGHT JOIN


-- 					FULL OUTER JOIN

-- *****		Syntax:	1)		SELECT * FROM tableA 
-- 								FULL OUTER JOIN tableB 
-- 								ON tableA.col_match = tableB.col_match
-- 
-- 						2)		SELECT * FROM tableA 
-- 								FULL OUTER JOIN tableB 
-- 								ON tableA.col_match = tableB.col_match
-- 								WHERE tableA.id IS NULL OR tableB.id IS NULL

-- SELECT * FROM customer
-- FULL OUTER JOIN payment
-- ON customer.customer_id = payment.customer_id
-- WHERE customer.customer_id IS null
-- OR payment.payment_id IS null;



-- 					LEFT OUTER JOIN / LEFT JOIN

-- *****		Syntax:	1)		SELECT * FROM tableA 
-- 								LEFT OUTER JOIN tableB 
-- 								ON tableA.col_match = tableB.col_match
-- 
-- 						2)		SELECT * FROM tableA 
-- 								LEFT OUTER JOIN tableB 
-- 								ON tableA.col_match = tableB.col_match
-- 								WHERE tableB.id IS NULL

-- SELECT film.film_id, title, inventory_id, store_id FROM film
-- LEFT JOIN inventory
-- ON film.film_id = inventory.film_id
-- WHERE inventory.film_id IS NULL;


-- 					RIGHT OUTER JOIN / RIGHT JOIN

-- *****		Syntax:	1)		SELECT * FROM tableA 
-- 								RIGHT JOIN tableB 
-- 								ON tableA.col_match = tableB.col_match
-- 
-- 						2)		SELECT * FROM tableA 
-- 								RIGHT JOIN tableB 
-- 								ON tableA.col_match = tableB.col_match
-- 								WHERE tableA.id IS NULL




-- 				UNION

-- *****		Syntax:		SELECT * FROM tableA 
-- 							UNION 
-- 							SELECT * FROM tableB





-- 				JOIN CHALLENGE

-- SELECT customer_id, first_name, last_name, district, email FROM customer
-- INNER JOIN address
-- ON customer.address_id = address.address_id 
-- WHERE address.district = 'California'


-- SELECT title FROM film
-- LEFT JOIN film_actor
-- ON film.film_id = film_actor.film_id
-- WHERE actor_id = 2;

-- 		OR

-- SELECT title, first_name, last_name FROM film_actor
-- INNER JOIN actor ON actor.actor_id = film_actor.actor_id
-- INNER JOIN film ON film_actor.film_id = film.film_id
-- WHERE first_name = 'Nick' AND last_name = 'Wahlberg'




