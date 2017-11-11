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
	
