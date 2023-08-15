-- 			SELECT

-- SELECT first_name,last_name FROM actor;
-- SELECT customer_id, first_name, last_name, email FROM customer;
-- SELECT customer_id, first_name, last_name, email FROM customer;



-- 			DISTINCT

-- Select Distinct(first_name) From actor
-- Select Distinct release_year from film;
-- Select Distinct rental_rate from film;



-- 			DISTINCT CHANLLENGE

-- Select Distinct rating from film;



-- 			COUNT

-- Select * from payment;
-- Select count(*) from payment;
-- Select count(*) from payment
-- Select count( Distinct(amount)) from payment;



-- 			WHERE

-- Select * from customer
-- Select * from customer where first_name = 'Linda'
-- Select * from film where rental_rate > 4;
-- Select * from film where rental_rate > 4 AND replacement_cost >= 19.99;
-- Select * from film where rental_rate > 4 AND replacement_cost >= 19.99
-- AND rating = 'R';
-- Select title from film where rental_rate > 4 AND replacement_cost >= 19.99
-- AND rating = 'R';
-- Select COUNT(*) from film where rental_rate > 4 AND replacement_cost >= 19.99
-- AND rating = 'R';
-- Select count(*) from film where rating = 'R' OR rating = 'PG-13';
-- Select * from film where rating != 'R';



-- 			WHERE CHALLENGE

-- Select Count(*) from customer where first_name = 'Jared'
-- select email from customer where first_name = 'Nancy' And last_name = 'Thomas'
-- select description from film where title = 'Outlaw Hanky'
-- select phone from address where address = '259 Ipoh Drive'



-- 			ORDER BY

-- select * from customer order by first_name, last_name;
-- select store_id, first_name, last_name from customer order by store_id, first_name, last_name;
-- select first_name, last_name from customer order by store_id DESC, first_name ASC, last_name;



-- 			LIMIT

-- select * from payment order by payment_date Desc LIMIT 5;
-- select * from payment WHERE amount != 0 order by payment_date Desc LIMIT 5;



-- 			ORDER BY CHALLENGE

-- select customer_id from payment where amount != 0 order by payment_date ASC Limit 10;
-- SELECT title,length FROM film ORDER BY length ASC LIMIT 5;
-- SELECT COUNT(*) FROM film WHERE length <= 50;



-- 			BETWEEN

-- select Count(*) from payment where amount BETWEEN 8 and 9;
-- select Count(*) from payment where amount NOT BETWEEN 8 and 9;
-- ******* 			NOTE: In '2007-02-01' AND '2007-02-15'
-- ******* 				It checks ffrom checks from 0:00 on 1st, FEB to 0:00 on 15th, FEB
-- select * from payment where payment_date BETWEEN '2007-02-01' AND '2007-02-15';



-- 			IN

-- select * from payment where amount IN (0.99, 1.98, 1.99);
-- select Count(*) from payment where amount IN (0.99, 1.98, 1.99);
-- select * from payment where amount NOT IN (0.99, 1.98, 1.99);
-- select Count(*) from payment where amount NOT IN (0.99, 1.98, 1.99);
-- select * from customer where first_name IN ('John', 'Jake', 'Julie' );
-- select * from customer where first_name NOT IN ('John', 'Jake', 'Julie');



-- 			LIKE & ILIKE

--  ******* 		NOTE: 	LIKE is case sensitive
-- 							ILIKE is case in-sensitive
-- Select * from customer where first_name LIKE 'J%';
-- Select COUNT(*) from customer where first_name LIKE 'J%';
-- Select * from customer where first_name LIKE 'J%' and last_name LIKE 'S%';
-- Select * from customer where first_name ILIKE 'j%' and last_name ILIKE 'j%';
-- Select * from customer where first_name LIKE '%er%';
-- Select * from customer where first_name LIKE '_her%';
-- Select * from customer where first_name NOT LIKE '_her%';
-- Select * from customer where first_name LIKE 'A%' order by last_name ;
-- Select * from customer where first_name LIKE 'A%' and last_name NOT LIKE 'B%' 
-- Order by last_name;




-- 			GENERAL CHALLENGE

-- SELECT COUNT(amount) FROM payment WHERE amount > 5;
-- SELECT COUNT(*) FROM actor WHERE first_name LIKE 'P%';
-- SELECT COUNT(DISTINCT(district)) FROM address;
-- SELECT DISTINCT(district) FROM address;
-- SELECT COUNT(*) FROM film WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;
-- SELECT COUNT(*) FROM film WHERE title LIKE '%Truman%';

