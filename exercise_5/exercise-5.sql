-- find all film titles that an actor with the last_name Davis appears in
select
  film.title
from
  film
-- Similar to exercise 3 but with actor, film_actor, film
  left join film_actor on film_actor.film_id = film.film_id
  left join actor on actor.actor_id = film_actor.actor_id
where
  actor.last_name =  'Davis'