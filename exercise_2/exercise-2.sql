-- find all rental dates for customers with the first_name Patricia
select
  rental.rental_date
from
  rental
-- use INNER JOIN FROM customer onto rental
  inner join customer on customer.customer_id = rental.customer_id
where
  customer.first_name = 'Patricia'
