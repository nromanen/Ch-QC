















































































































/*4. Show the list of first, last names and ages of the employees whose age is greater than 55. The result should be sorted by last name.
*/
SELECT last_name, first_name, extract (year from age(date_of_birth)) as age 
from public.employee 
where date_part('year',age(date_of_birth))>55
ORDER BY last_name;

/* 11.	Show the list of all cities where the employees are from.*/
SELECT city.name_of_city
	FROM public.employee, public.city
    WHERE employee.id_city=city.id_city ;
	
/*17. Show the count of orders made by each customer from France.*/
SELECT customer.last_name, count(id_order), country.name_of_country
	FROM public.customer, public."order", public.city, public.country
    where "order".id_customer=customer.id_customer AND customer.id_city=city.id_city
    AND city.id_country=country.id_country AND country.name_of_country = 'France'
    GROUP BY customer.last_name, country.name_of_country ;
	
/*24. *Show the list of french customers’ names who used to order french products.*/
SELECT customer.last_name||' '||customer.first_name as "name customer"
	FROM public.customer, public.city, public.country, public."order", public.orders_products, public.product
    WHERE customer.id_city=city.id_city
    AND city.id_country=country.id_country AND country.name_of_country = 'France'
    AND "order".id_order=orders_products.id_order AND orders_products.id_product=product.id_product
    AND product.id_country = country.id_country AND country.name_of_country = 'France'
    
    GROUP BY customer.last_name, customer.first_name, country.name_of_country;
	
/*28. *Show the list of product names along with unit prices and the history of unit prices taken from the orders 
(show ‘Product name – Unit price – Historical price’). The duplicate records should be eliminated. 
If no orders were made for a certain product, then the result for this product should look like 
‘Product name – Unit price – NULL’. Sort the list by the product name.*/
SELECT product.name_of_product as 'Product name', product.price as 'Unit price', orders_products.hprice as 'Historical price'
	FROM public.product, public.orders_products
    WHERE product.id_product=orders_products.id_product
    
    GROUP BY product.name_of_product,product.price, orders_products.hprice ;
	
/*32. *Fetch the records you have inserted by the SELECT statement*/
INSERT INTO public.orders_products
SELECT * From public.orders_products
WHERE id_order IN (Select id_order 
     FROM public.orders_products);
	 
/* 6. Calculate the greatest, the smallest and the average age among the employees from London.*/
SELECT min(age(date_of_birth)), max(age(date_of_birth)), avg(age(date_of_birth))
	FROM public.employee
    WHERE id_city=1;
	
	