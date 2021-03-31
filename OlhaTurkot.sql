--13	Show first and last names of the employees who used to serve orders shipped to Madrid
select first_name, last_name 
from employees
join orders on employees.employee_id = orders.employee_id 
where ship_city='Madrid';

--20 Show the list of customers’ names who used to order the ‘Tofu’ product (use a subquery).
select company_name from customers where customer_id in
(select customer_id from orders where order_id in
(select order_id from order_details where product_id in
(select product_id from products where product_name = 'Tofu')))