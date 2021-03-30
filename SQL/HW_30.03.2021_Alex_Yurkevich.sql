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
group by company_name, customers.country 
having country = 'France'; 

--25 Show the total ordering sum calculated for each country of customer.
select customers.country, sum (order_id) as ordering_sum
from orders
join customers 
on orders.customer_id = customers.customer_id
group by customers.country;

--32 Fetch the records you have inserted by the SELECT statement.
create table categories2 (
category_id int2 primary key,
category_name varchar(15),
description text,
picture bytea
);

insert into categories2 select * from categories;


select * from categories2;