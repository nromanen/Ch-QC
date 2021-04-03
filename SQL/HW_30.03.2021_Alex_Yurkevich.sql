--4 Show the list of first, last names and ages of the employees whose age is greater than 55. 
--The result should be sorted by last name.
select first_name, last_name, 
extract (year from age(current_date, employees.birth_date)) as age
from employees
order by last_name ;

--11 11	Show the list of all cities where the employees are from.
select distinct city 
from employees;

--18 Show the list of french customers’ names who have made more than one order (use grouping).
select customers.company_name, count (order_id) as orders_from_french
from orders
join customers 
on orders.customer_id = customers.customer_id
where country like 'France'
group by customers.customer_id 
having count(order_id) > 1; 



--32 Fetch the records you have inserted by the SELECT statement.
create table categories2 (
category_id int2 primary key,
category_name varchar(15),
description text,
picture bytea
);

insert into categories2 select * from categories;


select * from categories2;


--25 Show the total ordering sum calculated for each country of customer.

select c2.customer_id, c2.country, sum ((unit_price - (unit_price * discount)) * quantity) 
as total_ordering_sum
from customers c2 
join orders o2 
on c2.customer_id = o2.customer_id 
join order_details od 
on o2.order_id = od.order_id 
group by c2.customer_id
order by c2.country;



