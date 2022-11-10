-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join
select
  category.name
from
  inventory
  left join rental on rental.inventory_id = inventory.inventory_id
  left join film on inventory.film_id = film.film_id
  left join film_category on film.film_id = film_category.film_id
  left join category on film_category.category_id = category.category_id
where
  rental.rental_id is null