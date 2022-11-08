-- find all film titles with the category Action
select
  film.title
from
  film
-- use a LEFT JOIN FROM film onto film_category
  left join film_category on film_category.film_id = film.film_id
-- use LEFT JOIN FROM film_categor onto category
  left join category on category.category_id = film_category.category_id
where
  category.name = 'Action'