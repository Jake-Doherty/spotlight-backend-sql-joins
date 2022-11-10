-- find the title and count of the top 10 most rented films
select
  film.title,
-- use COUNT to count each row
  count(*)
from
  film
  left join inventory on inventory.film_id = film.film_id
  left join rental on rental.inventory_id = inventory.inventory_id
group by
-- GROUP BY the film_id
  film.film_id
order by
-- ORDER in descending order
  count desc
limit
-- LIMIT 10
  10
;