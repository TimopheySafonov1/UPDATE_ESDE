UPDATE film
SET rental_duration = 21,
    rental_rate = 9.99
WHERE title = 'Shot Caller';


SELECT c.customer_id, c.first_name, c.last_name,
COUNT(r.rental_id) AS rental_count, COUNT(p.payment_id) AS payment_count
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id
HAVING COUNT(r.rental_id) >= 10 AND COUNT(p.payment_id) >= 10
LIMIT 1;

SELECT address_id FROM address LIMIT 1;

UPDATE customer
SET first_name = 'Timophey',
	last_name = 'Safonov',
	email = 'safonov.timophey@student.ehu.lt',
	address_id = 1,
	create_date = CURRENT_DATE
WHERE customer_id = 1;