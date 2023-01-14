-- find the film title of all inventory items that have never been rented
select
  film.title
from
  inventory
-- LEFT JOIN FROM inventory to film and to rental
  left join rental on rental.inventory_id = inventory.inventory_id
  left join film on inventory.film_id = film.film_id
where
-- use WHERE IS NULL
  rental.rental_id is null