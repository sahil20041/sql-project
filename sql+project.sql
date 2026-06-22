create database music_database;
select * from album2;
select * from employee
order by levels desc
limit 1;
select * from invoice ;
select count(*) as c, billing_country 
from invoice
group by billing_country
order by c desc;
select total from invoice
order by total desc
limit 3;
select count(*) as c , country 
from customer
group by country
order by c desc;
select sum(total) as invoice_total ,billing_city 
from invoice
group by billing_city
order by invoice_total desc
limit 1;
select customer.customer_id, customer.first_name,customer.last_name,
sum(invoice.total) as total
from customer
join invoice on customer.customer_id=invoice.customer_id
GROUP BY
    customer.customer_id,
    customer.first_name,
    customer.last_name
order by total desc 
limit 1;
select distinct email,first_name, last_name 
from customer
 join invoice on customer.customer_id=invoice.customer_id
 join invoice_line on invoice.invoice_id= invoice_line.invoice_id
 where track_id in (
 select track_id from track
 join genre on track.genre_id= genre.genre_id
 where genre.name like "Rock" )
 order by email ;
