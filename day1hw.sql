-- 1. How many actors are there with the last name ‘Wahlberg’?

SELECT *
FROM actor
WHERE last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?

SELECT count(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- 3. What film does the store have the most of? (search in inventory)

SELECT COUNT(inventory_id), film_id
FROM inventory
WHERE store_id = 2
GROUP BY film_id;
ORDER BY COUNT(inventory_id) desc;

-- 4. How many customers have the last name ‘William’?

SELECT count(last_name)
FROM customer
WHERE last_name = 'William';

-- 5. What store employee (get the id) sold the most rentals?

SELECT count(rental_id)
FROM rental
WHERE staff_id = 1;

-- 6. How many different district names are there?

SELECT COUNT(DISTINCT district)
FROM ADDRESS;

-- 7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT COUNT(actor_id) GET film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT COUNT(last_name)
WHERE store_id = 1 and last_name = '%es'


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

SELECT COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY rental_id
HAVING rental_id > 250;

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

SELECT COUNT(film_id), rating
FROM film
GROUP BY rating
ORDER BY count(film_id) DESC;