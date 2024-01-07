-- Question 1
-- 2 actors

select first_name, last_name
from actor
where last_name like 'Wahlberg';

-- Question 2
-- 3 payments

select customer_id, amount 
from payment 
where amount >= 3.99
order by amount asc;

-- Question 3
-- There are 8 of the following film_id's: 835,773,45,444,412,880,846,331,911,621,301,1000,361,91,200,358,973,350,559,86,489,382,702,531,856,870,295,206,73,418,460,103,341,748,500,753,572,
select  film_id, count(film_id)
from inventory
group by film_id
order by count(film_id) desc

-- Question 4
-----------------------------------------------------------------------------------------------------
-- There is no customer with the last name 'William', but there is one with the last name "williams".
-----------------------------------------------------------------------------------------------------
select *
from customer
where last_name like 'William%'

-- Question 5
-- Staff_id 1 sold 8040 rentals
-- Staff_id 2 sold 8004 rentals
-- Answer: staff_id 1 sold the most.
select *
from rental
where staff_id = 2

-- Question 6
-- 603
select count(district)
from address

-- Question 7
-- THe table doesn't have any actors listed, so the question can't be asnwered.
select *
from film_actor

-- Question 8
-- 21 Customers have a last name ending with 'es'
select *
from customer
where last_name like '%es'

-- Question 9
-- 3 payment amounts 
select count(amount), amount from payment
where customer_id between 380 and 430
group by amount having count(amount) > 250


-- Question 10
-- PG-13 has the most movies total, with there being 5 categories.
select count(rating), rating
from film
group by rating
order by rating 



