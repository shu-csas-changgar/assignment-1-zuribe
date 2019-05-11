/*
Zane Uribe
Databases
Assignment 1
*/

#1 
select * 
from actor 
where first_name = 'PENELOPE';

#2
select first_name, last_name, title 
from actor
join film_actor 
	on film_actor.actor_id = actor.actor_id
join film 
	on film.film_id = film_actor.film_id
where film.title = 'ZOOLANDER FICTION';

#3
select first_name, last_name, title 
from actor
join film_actor 
	on actor.actor_id = film_actor.actor_id
join film 
	on film.film_id = film_actor.film_id
where actor.first_name = 'JENNIFER' 
	and actor.last_name = 'DAVIS';

#4
select rental.rental_id, film.title, rental.rental_date
from rental
join inventory 
	on inventory.inventory_id = rental.inventory_id
join film 
	on film.film_id = inventory.film_id
where rental.customer_id = 11
	and rental.return_date is null;

#5    
select film.film_id, film.title
from film 
join film_category 
	on film_category.film_id = film.film_id
join category 
	on category.category_id = film_category.category_id
where category.name = 'ANIMATION';

#6
select amount 
from payment
join rental
	on rental.rental_id = payment.rental_id
join inventory
	on inventory.inventory_id = rental.inventory_id
join film
	on film.film_id = inventory.film_id
where film.title = 'CLOSER BANG'
	and rental.customer_id = 95;

#7
select staff.first_name, staff.last_name 
from staff 
join rental
	on staff.staff_id = rental.staff_id
join customer
	on customer.customer_id = rental.customer_id
join inventory
	on inventory.inventory_id = rental.inventory_id
join film
	on film.film_id = inventory.film_id
where customer.first_name = 'MARIE'
	and customer.last_name = 'TURNER'
    and film.title = 'CHAINSAW UPTOWN';