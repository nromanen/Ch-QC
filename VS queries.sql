--2. Show the list of first and last names of the employees from London.

SELECT e.first_name, e.last_name FROM employee e
JOIN city c on e.id_city = c.id
WHERE c.name = 'London';

--9. Show the first and last name(s) of the eldest employee(s). Use a subquery.

SELECT first_name, last_name FROM employee 
WHERE date_birth = (SELECT MIN(date_birth) FROM employee)

--16. Show first and last names of the employees as well as the count of their orders shipped after required date during the year 1997 (use left join).
SELECT DISTINCT first_name, last_name, COUNT (date) AS "Shipped after required date" FROM employee e
LEFT JOIN public.order o ON e.id = o.id_employee
WHERE EXTRACT(year FROM "date") = 1997
AND o.date < o.delivery_date
GROUP BY first_name, last_name;

--23. Show the list of french customers’ names who used to order non-french products (use a subquery).

--french customers ordered non french products 
SELECT DISTINCT first_name, last_name FROM customer c
WHERE id IN (
--orders with non french products
SELECT id_customer FROM public.order o
WHERE o.id IN (
SELECT id_order FROM order_item oi
WHERE id_product IN (
--non french products
SELECT p.id FROM product p
JOIN country co1 ON p.id_country = co1.id
WHERE co1.name != 'France'
)
)
)
GROUP BY first_name, last_name

--30. Show the list of cities where employees and customers are from and where orders have been made to. Duplicates should be eliminated.

SELECT DISTINCT c.name FROM employee e
JOIN city c ON e.id_city = c.id
UNION
SELECT c.name FROM customer cu
JOIN city c ON cu.id_city = c.id
GROUP BY name
ORDER BY name;