-- Lab SQL Queries 3


-- 1.

select
	count(distinct last_name) as "Total of Different Last Names"
from sakila.actor;
    
-- 2.

select
	count(distinct language_id) as "Total of Different Languages Produced"
from 
	sakila.film;
    
-- 3.

select 
	 count(rating)
from 
	sakila.film
where
	rating =  "PG-13";    
-- 4.


select
	title, length, release_year
from	
    sakila.film
where release_year = '2006'
order by 
	length desc
limit 10;


-- 5.

select
	datediff(min(rental_date), max(rental_date)) as "Days Operating"
from
	sakila.rental;
		
-- 6.
select
	date_format(rental_date, '%M') as Month,
    date_format(rental_date, '%W') as Weeekday
from 
	sakila.rental
limit 
	20;
    
-- 7.

select
	*, 
    case
	when 
		date_format(rental_date, '%W') in ('Saturday', 'Sunday') then 'Weekend'
	else 'Workday'
end as Days_type
from
	sakila.rental;
    
-- 8.
select
	date(max(rental_date)) - interval 30 day, date(max(rental_date))
from sakila.rental;
    
select 
	max(rental_date)
from
	sakila.rental;
    
select 
	count(*)
from 
	sakila.rental
where date(rental_date) between date('2006-02-01') and date ('2006-02-14')
