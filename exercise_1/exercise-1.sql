-- find all address_id of addresses in the city of Dundee
select
  address.address_id
from
  address
-- use INNER JOIN FROM address on to city
  inner join city on address.city_id = city.city_id
where
  city.city = 'Dundee'
