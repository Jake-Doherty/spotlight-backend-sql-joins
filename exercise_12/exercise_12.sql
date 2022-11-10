-- the top 10 cities with the most total rental payment amount
select
-- include the city name and sum
  city.city,
-- use SUM to sum up the amounts
  sum(payment.amount)
from
  film
  left join inventory on inventory.film_id = film.film_id
  left join rental on inventory.inventory_id = rental.inventory_id
  left join payment on rental.rental_id = payment.rental_id
  left join customer on payment.customer_id = customer.customer_id
  left join address on customer.address_id = address.address_id
  inner join city on address.city_id = city.city_id
group by
  city.city
order by
  sum desc
limit
  10
;