-- return the title, description, release year and list of actors returned as a JSON blob
-- for the movie Airplane Sierra
select
  film.title,
  film.description,
  film.release_year,
  json_agg(json_build_object('actor_id', actor.actor_id, 'first_name', actor.first_name, 'last_name', actor.last_name, 'last_update', actor.last_update)) as actors
from
    film
    left join film_actor on film_actor.film_id = film.film_id
    left join actor on actor.actor_id = film_actor.actor_id
    where
    film.title = 'Airplane Sierra'
group by    
    film.title,
    film.description,
    film.release_year
;