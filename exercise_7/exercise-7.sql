-- find all film titles rented out by customers who live in the city of Dundee
-- Similar to exercise 6 but you need a few more joins to get the city name
select
  film.title
from
  film
  left join inventory on inventory.film_id = film.film_id
  left join rental on rental.inventory_id = inventory.inventory_id
  left join customer on customer.customer_id = rental.customer_id
  left join address on address.address_id = customer.address_id
  left join city on city.city_id = address.city_id
where
  city.city = 'Dundee'
