-- the average film length by category
-- include the category name and avg length
select
  category.name,
  avg(film.length)
from
    film
    left join film_category on film_category.film_id = film.film_id
    left join category on category.category_id = film_category.category_id
group by    
    category.name
;