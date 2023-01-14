-- find all film titles rented out by customers who live in the country of Peru
-- Similar to exercise 7 with an additional join to get country name
select
    film.title
from
    film
    left join inventory on inventory.film_id = film.film_id
    left join rental on rental.inventory_id = inventory.inventory_id
    left join customer on customer.customer_id = rental.customer_id
    left join address on address.address_id = customer.address_id
    left join city on city.city_id = address.city_id
    left join country on country.country_id = city.country_id
where
    country.country = 'Peru'
