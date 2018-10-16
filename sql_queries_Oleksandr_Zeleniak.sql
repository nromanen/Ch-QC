7.    Calculate the greatest, the smallest and the average age of the employees for each city.

select avg(age(date_birth)) as avg_age, min(age(date_birth)) as min_age, city.name, max(age(date_birth)) as max_age 
               
from employee

join city on city.id = employee.id_city

group by city.name ;

14.    Show first and last names of the employees as well as the count of orders each of them have received during the year 1997 (use left join).

select  e.first_name, e.last_name, count(date)

from public.Employee e

left join public.Order o ON e.id = o.id_employee where extract(year from "date") = 1997

group by e.first_name, e.last_name;


21.*Show the list of customers’ names who used to order the ‘Tofu’ product, along with the total amount of the product they have ordered and with the total sum for ordered product calculated.

select customer.id, Customer.first_name, Customer.last_name, SUM(Order_item.historical_price * Order_item.count) as total_amount_calcualted FROM public.customer

JOIN public.Order o ON o.id_customer = customer.id

JOIN public.Product ON Product.name = 'tofu'

JOIN public.Order_item ON Order_item.id_order = o.id and Order_item.id_product = Product.id

GROUP BY Customer.id

28.Show the list of product names along with unit prices and the history of unit prices taken from the orders (show ‘Product name – Unit price – Historical price’). The duplicate records should be eliminated. If no orders were made for a certain product, then the result for this product should look like ‘Product name – Unit price – NULL’. Sort the list by the product name.

SELECT DISTINCT p.name, p.price_unit , oi.historical_price from product p

LEFT JOIN order_item oi ON p.id = oi.id_product

ORDER BY p.name;

35.Delete one of your records (first run the SELECT statement to check whether you are deleting the appropriate record!).

delete from customer where first_name = 'sergio'