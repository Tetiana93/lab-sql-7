select last_name, count(last_name) from actor
group by last_name
having count(last_name)=1
order by last_name;

select last_name, count(last_name) from actor
group by last_name
having count(last_name)>1
order by last_name;

select staff_id, count(rental_id)
from rental
group by staff_id;

select release_year, count(film_id)
from film
group by release_year;

select rating, count(film_id)
from film 
group by rating;

select  rating, round(avg(length), 2)
from film
group by  rating;

select  rating, round(avg(length), 2) as mean 
from film
group by  rating
having mean > 120;