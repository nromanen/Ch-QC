//Show all info about the employee with ID 8

SELECT e.id, p1.first_name, p1.last_name, e.birth_date, e.hire_date, e.address, c1.name AS city, 
	p2.last_name AS chief, o.id AS order_id, o.order_date, o.shipped_date, p2.last_name AS customer, 
	c2.name AS city_delivery   FROM employee AS e

	JOIN "order" AS o ON e.id=o.employee_id
	JOIN person AS p1 ON e.person_id=p1.id
	JOIN person AS p2 ON o.person_id=p2.id
	JOIN city AS c1 ON p1.city_id=c1.id
	JOIN city AS c2 ON o.city_delivery_id=c2.id
	WHERE e.id=4;
	
	
	
//Show first, last names and ages of 3 eldest employees.	
	
SELECT e.id, p.first_name, p.last_name, age(current_date,birth_date)
	FROM employee AS e
       JOIN person AS p ON e.person_id=p.id
	ORDER BY age DESC
       FETCH FIRST 3 ROWS ONLY;

	   
// *Show the list of product names along with unit prices and the history of unit prices taken from the orders 
    (show ‘Product name – Unit price – Historical price’). The duplicate records should be eliminated. If no 
	orders were made for a certain product, then the result for this product should look like ‘Product name – 
	Unit price – NULL’. Sort the list by the product name.

SELECT DISTINCT p.name, p.price AS "unit price", i.historical_price AS "historical price" FROM product AS p
	LEFT JOIN order_items AS i ON p.id=i.product_id ORDER BY p.name;
	
	
	  
// Show the list of french customers’ names who have made more than one order (use a subquery).

SELECT  p.id, p.first_name, p.last_name, c1.name AS city, COUNT (o.id) AS "orders" FROM person AS p 
	JOIN "order" AS o ON p.id=o.person_id
	JOIN city AS c1 ON p.city_id=c1.id 
	JOIN country AS c2 ON c1.country_id=c2.id
	WHERE (c1.name IN
		(SELECT name FROM city WHERE country_id=2))
	GROUP BY p.id, p.first_name, p.last_name, c1.name
        HAVING COUNT(*)>1;

