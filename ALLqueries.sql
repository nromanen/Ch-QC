
/* 2.Show the list of first and last names of the employees from London. */

SELECT employee.last_name, employee.first_name, city.name_of_city
	FROM public.employee, public.city
    WHERE employee.id_city=city.id_city  
   
    AND city.name_of_city = 'London'
    
    ;

/* 7.Calculate the greatest, the smallest and the average age of the employees for each city.  */

SELECT  MAX(date_part('year',age(date_of_birth))), MIN(date_part('year',age(date_of_birth))), ROUND(AVG(date_part('year',age(date_of_birth)))), city.name_of_city
	FROM public.employee, public.city
    WHERE employee.id_city=city.id_city  
    GROUP BY city.name_of_city
    ;
	
/*13.Show first and last names of the employees who used to serve orders shipped to Madrid. */	
	
	SELECT employee.last_name, employee.first_name, city.name_of_city
	FROM public.employee, public.city
    WHERE employee.id_city=city.id_city and city.name_of_city='Madrid'
    ;
	
	
/* 19.Show the list of french customers’ names who have made more than one order.*/

    SELECT customer.first_name ||' '||customer.last_name as "customer", count(id_order)
	FROM public.customer, public.city, public.country, public."order"
    
    WHERE "order".id_customer=customer.id_customer AND customer.id_city=city.id_city
    AND city.id_country=country.id_country
    AND country.name_of_country='France'
    
    Group by customer.last_name, customer.first_name
    
    ;
	
	
	
/* 22.*Show the list of french customers’ names who used to order non-french products. */

	SELECT distinct (customer.first_name ||' '||customer.last_name) as "customer"
	FROM public.customer, public.city, public.country, public."order"
    WHERE "order".id_customer=customer.id_customer 
    AND customer.id_city=city.id_city
    AND city.id_country=country.id_country
    AND country.name_of_country='France'
    Group by customer.last_name, customer.first_name, "order".id_order
    having "order".id_order in (
        SELECT distinct orders_products.id_order
		FROM public.orders_products
    	Where orders_products.id_product in (
   			Select  product.id_product from product,country
   			where product.id_country=country.id_country
   			and country.name_of_country<>'France'))
    ;
	
	/* Шукаємо французьких замовників, а потім підзапитом не французькі товари */
	
	
	
/*34.	*Change the HireDate field in all your records to current date (first run the SELECT statement to check whether you are updating the appropriate records!). */

	UPDATE public.employee
	SET  date_of_hire=current_date
	;

