-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
select
  country.country,
  avg(payment.amount)
from
    film
    left join inventory on inventory.film_id = film.film_id
    left join rental on inventory.inventory_id = rental.inventory_id
    left join payment on rental.rental_id = payment.rental_id
    left join customer on payment.customer_id = customer.customer_id
    left join address on customer.address_id = address.address_id
    inner join city on address.city_id = city.city_id
    inner join country on city.country_id = country.country_id
group by
    country.country
order by
	avg desc
limit 
	10
;