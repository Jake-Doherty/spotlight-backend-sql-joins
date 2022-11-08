-- find all film titles rented out by customers with the first_name Roberta
select
  film.title
from
  film
-- Similar to exercise 5
  left join inventory on inventory.film_id = film.film_id
  left join rental on rental.inventory_id = inventory.inventory_id
  left join customer on customer.customer_id = rental.customer_id
where
  customer.first_name = 'Roberta'