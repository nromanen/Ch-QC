select first_name, last_name 
from employees
join orders on employees.employee_id = orders.employee_id 
where ship_city='Madrid';


select company_name from customers where customer_id in
(select customer_id from orders where order_id in
(select order_id from order_details where product_id in
(select product_id from products where product_name = 'Tofu')))