<<<<<<< HEAD


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
	
	
=======
/* 5.Calculate the count of employees from London */
SELECT public.city.name_of_city, COUNT (public.employee.id_employee) AS "Count of employees from London"
from public.city,  public.employee 
WHERE public.employee.id_city= public.city.id_city
AND  public.city.name_of_city='London' 
GROUP BY public.city.name_of_city

/* 10.Show first, last names and ages of 3 eldest employees */
SELECT last_name, first_name, age(date_of_birth) as age 
from public.employee 
ORDER BY date_of_birth 
LIMIT 3

/* 16.Show first and last names of the employees as well as the count of their orders shipped after required date during the year 1997 (use left join) */
SELECT public.employee.last_name || ' ' || public.employee.first_name AS "Name_of_employee", sum(public.orders_products.quantity)
FROM public.employee LEFT JOIN public.order ON public.employee.id_employee=public.order.id_employee
JOIN public.orders_products   ON public.orders_products.id_order=public.order.id_order
WHERE public.order.date_of_creation>'1997-04-09'
AND date_part('year',public.order.date_of_creation)=1997
GROUP BY "Name_of_employee"

/* 21.Show the list of customers’ names who used to order the ‘Tofu’ product, along with the total amount of the product they have ordered and with the total sum for ordered product calculated. */
SELECT customer.last_name || ' ' || customer.first_name AS "Name_of_customer", SUM(orders_products.quantity), SUM(orders_products.quantity*orders_products.hprice)
FROM orders_products, public.order, customer, product
WHERE orders_products.id_order=public.order.id_order
AND public.order.id_customer=customer.id_customer
AND orders_products.id_product=product.id_product
AND product.name_of_product='Tofu'
GROUP BY "Name_of_customer"

/* 25.Show the total ordering sum calculated for each country of customer */
SELECT public.country.name_of_country,  sum(public.orders_products.hprice*public.orders_products.quantity)   AS "Sum of orders"
FROM public.country, public.orders_products, public.order, public.customer, public.city
WHERE public.order.id_order=public.orders_products.id_order
AND public.order.id_customer=public.customer.id_customer
AND public.customer.id_city=public.city.id_city
AND public.city.id_country=public.country.id_country
GROUP BY public.country.name_of_country
ORDER BY "Sum of orders"

/* 29.Show the list of employees’ names along with names of their chiefs */
SELECT employees.last_name || ' ' || employees.first_name AS "Name_of_employee",
chief.last_name || ' ' || chief.first_name AS "Name_of_chief", employees.id_chief 
FROM public.employee as chief, public.employee AS employees WHERE 
 chief.id_employee=employees.id_chief
ORDER BY "Name_of_employee"
/*використовується, коли в одній і тій же таблиці первинний ключ є вторинним ключем для іншої колонки. одну й ту ж таблицю називаємо різними іменами для того, щоб з неї можна було двічі витягнути однакові поля, але ті, що відповідають різним умовам*

/* 31.Insert 5 new records into Employees table. Fill in the following  fields: LastName, FirstName, BirthDate, HireDate, Address, City, Country, Notes. The Notes field should contain your own name (to distinguish your records from the ones inserted by other trainees). */
INSERT INTO public.employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city)
	VALUES (510, 'Kurko', 'Vadym', '1989-12-12', '2016-01-10', '12451, Ukraine, Kyiv, Hmelnyckogo 23/12', 'Hryshko Mariia', 501, 5);
INSERT INTO public.employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city)
	VALUES (511, 'Black', 'Tom', '1969-12-12', '2006-01-10', '993336, USA, Chicago, 1 Street, 12', 'Hryshko Mariia', 501, 8);
INSERT INTO public.employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city)
	VALUES (512, 'Krum', 'Daniel', '1969-03-05', '2001-01-10', '9812671, Canada', 'Hryshko Mariia', 501, 3);
INSERT INTO public.employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city)
	VALUES (513, 'Bruck', 'Sam', '1978-02-11', '1999-01-10', '45121, Austria, Vena, Kalooni 12', 'Hryshko Mariia', 501, 9);
INSERT INTO public.employee (id_employee, last_name, first_name, date_of_birth, date_of_hire, address, notes, id_chief, id_city)
	VALUES (514, 'Dubko', 'Mark', '1981-12-12', '2011-01-10', '12451, Ukraine, Harkiv, Lva Tolstogo 12', 'Hryshko Mariia', 501, 6);


/* Handabura commit*/

/*1.Show all info about the employee with ID 8.*/
Select * From employee Where id_employee =101;

/*8. Show the list of cities in which the average age of employees is greater than 60 (the average age is also to be shown)*/
Select public.city.name_of_city, last_name, first_name, age(date_of_birth) as age 
from public.employee Join public.city On public.city.id_city=public.employee.id_city 
where date_part('year',age(date_of_birth))>60
ORDER BY public.city.name_of_city;

/*20. Show the list of customers’ names who used to order the ‘Tofu’ product*/
  Select Distinct public.customer.last_name,public.customer.first_name,
public.product.name_of_product 
From public.customer, public.product, public.order, public.orders_products
Where public.orders_products.id_order = public.order.id_order And
public.order.id_customer = public.customer.id_customer And
public.product.name_of_product ='Tofu‘;

/*14. Show first and last names of the employees as well as the count of orders each of them have received during the year 1997*/
Select public.employee.last_name || ' ' || public.employee.first_name as "Name employee",
Count (public.order.id_order)
From public.employee Left Join public.order on public.employee.id_employee = public.order.id_employee
Where date_part('year', public.order.date_of_creation)=1997
Group by "Name employee»


/*21.Show the list of customers’ names who used to order the ‘Tofu’ product, along with the total amount of the product they have ordered and with the total sum for ordered product calculated.*/
SELECT customer.last_name, /*product.name_of_product, */ sum(orders_products.quantity), sum(orders_products.quantity*orders_products.hprice)
    FROM orders_products, public.order, customer, product
    WHERE orders_products.id_order=public.order.id_order
    AND public.order.id_customer=customer.id_customer
    AND orders_products.id_product=product.id_product
    AND product.name_of_product='Tofu'
    GROUP BY customer.last_name

/*35.Delete one of your records (first run the SELECT statement to check whether you are deleting the appropriate record!)*/
.DELETE 
FROM ordes_products
WHERE id_order=101;
DELETE 
FROM "order" 
WHERE id_employee=102;
DELETE
FROM	employee
WHERE	id_employee =102 ;
	
>>>>>>> f2b50239d8ba382169cd1138ba0bfb7b83f39af4
