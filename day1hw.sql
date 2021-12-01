-- 1. How many actors are there with the last name ‘Wahlberg’?

SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?

SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- 3. What film does the store have the most of? (search in inventory)

SELECT inventory 
FROM store;
HAVING COUNT(film) > 5;


-- 4. How many customers have the last name ‘William’?

SELECT last_name
FROM customer
WHERE last_name = 'William';


-- 5. What store employee (get the id) sold the most rentals?

SELECT staff_id, rentals
FROM staff
WHERE max(amount);


-- 6. How many different district names are there?

SELECT COUNT(amount)
FROM district
WHERE COUNT(amount) > 5;


-- 7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT COUNT(film_actor) get film_id
FROM film
WHERE COUNT(max(amount));


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT customer
FROM store_id 1
WHERE last_name LIKE 'J__%es';



-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

SELECT amount
FROM payment
WHERE rentals > 250
GROUP BY customer
HAVING id between 380 and 430;

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

SELECT categories(amount), rating
FROM film
WHERE rating
HAVING max(amount);