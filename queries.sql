-- Borova 2.	Show the list of first and last names of the employees from London.
SELECT first_name, last_name FROM "Employee" e 
JOIN "City" c ON c.id = e.id_city  Where name_city= 'London' 

-- Borova 8.	Show the list of cities in which the average age of employees is greater than 60 (the average age is also to be shown)
SELECT (name_city), array_agg(birth_date) AS age FROM "City" c 
JOIN "Employee" e ON c.id = e.id_city where extract(year from age( now() , birth_date ))  >60
GROUP BY name_city

-- Borova 14. Show first and last names of the employees as well as the count of orders each of them have received during the year 1997 (use left join).
SELECT  e.first_name, e.last_name, count(date)
FROM "Employee" e
LEFT JOIN "Order" o ON e.id = o.id_employee WHERE EXTRACT(year FROM "date") = 1997
GROUP BY  e.first_name, e.last_name;

-- Borova 20.	Show the list of customers’ names who used to order the ‘Tofu’ product.
SELECT "Customer"."id", "Customer"."f_name_customer", "Customer"."l_name_customer" FROM public."Customer"
INNER JOIN public."Order" ON "Order"."id_customer" = "Customer"."id"
INNER JOIN public."Product" ON "Product"."name_product" = 'Tofu'
INNER JOIN public."Order_product" ON "Order_product"."id_order" = "Order"."id" and "Order_product"."id_product" = "Product"."id"
GROUP BY "Customer"."id";

-- Borova 26.	*Show the total ordering sums calculated for each customer’s country for domestic and non-domestic products separately (e.g.: “France – French products ordered – Non-french products ordered” and so on for each country).
-- For French products:
SELECT  cus.id, cus.f_name_customer, cus.l_name_customer, co.name_country AS cust_country, p.name_product, pr.name_producer, c.name_country as product_country
FROM "Customer" cus 
JOIN "City" ct ON cus.id_city = ct.id
JOIN "Country" co ON co.id = ct.id_country AND co.name_country = 'France'
JOIN "Order" o ON o.id_customer = cus.id 
JOIN "Order_product" op ON op.id_order = o.id
JOIN "Product" p ON p.id = op.id_product
JOIN "Producer" pr ON pr.id = p.id_producer
JOIN "Country" c ON c.id = pr.id_country AND c.name_country = 'France'

-- For non-french products:
SELECT  cus.id, cus.f_name_customer, cus.l_name_customer, co.name_country AS cust_country, p.name_product, pr.name_producer, c.name_country as product_country
FROM "Customer" cus 
JOIN "City" ct ON cus.id_city = ct.id
JOIN "Country" co ON co.id = ct.id_country AND co.name_country = 'France'
JOIN "Order" o ON o.id_customer = cus.id 
JOIN "Order_product" op ON op.id_order = o.id
JOIN "Product" p ON p.id = op.id_product
JOIN "Producer" pr ON pr.id = p.id_producer
JOIN "Country" c ON c.id = pr.id_country AND c.name_country != 'France'

-- Borova 32.	*Fetch the records you have inserted by the SELECT statement
SELECT *FROM "Employee" WHERE "Employee"."notes" = 'YuliiaBorova';


-- 3. Show the list of first and last names of the employees whose first name begins with letter A.
SELECT "first_name", "last_name" FROM public."Employee" WHERE "first_name" LIKE 'A%';

-- ---------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------
9. Show the first and last name(s) of the eldest employee(s). Use a subquery
SELECT  "last_name", "birth_date" FROM public."Employee" 
where "birth_date" = (select min("birth_date") FROM public."Employee" )



-- 4 Show the list of first, last names and ages of the employees whose age is greater than 55. The result should be sorted by last name.
SELECT first_name, last_name, birth_date, extract(year from age( now() , birth_date )) FROM "Employee"
where extract(year from age( now() , birth_date ))  >= 55
group by birth_date, first_name, last_name;


-- 10 Show first, last names and ages of 3 eldest employees.
SELECT  first_name, last_name, birth_date FROM "Employee"
ORDER BY birth_date LIMIT 3;

-- ---------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------

-- 15. Show first and last names of the employees as well as the count of orders each of them have received during the year 2017 (use a subquery).
SELECT "Employee"."id", "Employee"."first_name", "Employee"."last_name", COUNT(orders."id") orders_count
FROM public."Employee", 
     (SELECT "Order"."id", "Order"."id_employee" FROM public."Order" WHERE EXTRACT(year FROM "date") = 2017) orders
WHERE orders."id_employee" = "Employee"."id"
GROUP BY "Employee"."id";
     

-- 16 Show first and last names of the employees as well as the count of their orders shipped after required date during the year 1997 (use left join).
SELECT  e.first_name, e.last_name, extract(year from date) as required_date, count(date)
FROM "Employee" e
LEFT JOIN "Order" o ON e.id = o.id_employee AND o.date between '1997-01-01' AND '1997-12-31'
WHERE o.date IS NOT NULL
GROUP BY  e.first_name, e.last_name, required_date;
-- ---------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------

-- 21. *Show the list of customers’ names who used to order the ‘Tofu’ product, along with the total amount of the product they have ordered and with the total sum for ordered product calculated.
SELECT "Customer"."id", "Customer"."f_name_customer", "Customer"."l_name_customer",  
      
    SUM("Order_product"."unit_price" * "Order_product"."amount") as total_amount_calcualted 
FROM public."Customer"
INNER JOIN public."Order" ON "Order"."id_customer" = "Customer"."id"
INNER JOIN public."Product" ON "Product"."name_product" = 'Tofu'
INNER JOIN public."Order_product" ON "Order_product"."id_order" = "Order"."id" and "Order_product"."id_product" = "Product"."id"
GROUP BY "Customer"."id";

-- ---------------------------------------------------------------------------------------------------------------------
-- 22 *Show the list of french customers’ names who used to order non-french products (use left join).
SELECT  cus.id, cus.f_name_customer, cus.l_name_customer, co.name_country AS cust_country, p.name_product, pr.name_producer, c.name_country as product_country
FROM "Customer" cus 
JOIN "City" ct ON cus.id_city = ct.id
JOIN "Country" co ON co.id = ct.id_country AND co.name_country = 'USA' -- customer's country
JOIN "Order" o ON o.id_customer = cus.id 
JOIN "Order_product" op ON op.id_order = o.id
JOIN "Product" p ON p.id = op.id_product
JOIN "Producer" pr ON pr.id = p.id_producer
JOIN "Country" c ON c.id = pr.id_country AND c.name_country != 'USA'
WHERE cus.id not in (
SELECT  cus.id
FROM "Customer" cus 
JOIN "City" ct ON cus.id_city = ct.id
JOIN "Country" co ON co.id = ct.id_country AND co.name_country = 'USA' -- customer's country
JOIN "Order" o ON o.id_customer = cus.id 
JOIN "Order_product" op ON op.id_order = o.id
JOIN "Product" p ON p.id = op.id_product
JOIN "Producer" pr ON pr.id = p.id_producer
JOIN "Country" c ON c.id = pr.id_country AND c.name_country = 'USA');

-- ---------------------------------------------------------------------------------------------------------------------

-- 27. *Show the list of product categories along with total ordering sums calculated for the orders made for the products of each category, during the year 2017.
SELECT "Category"."id", "Category"."name_category", 
    SUM("Order_product"."amount") as total_amount, 
    SUM("Order_product"."unit_price" * "Order_product"."amount") as total_amount_calcualted 
FROM public."Category"
INNER JOIN public."Product" ON "Product"."id_category" = "Category"."id"
INNER JOIN public."Order_product" ON "Order_product"."id_product" = "Product"."id"
INNER JOIN public."Order" ON "Order"."id" = "Order_product"."id_order" and EXTRACT(year FROM "Order"."date") = 2017
GROUP BY "Category"."id";


-- variant with total products count
SELECT "Category"."id", "Category"."name_category", 
    SUM("Order_product"."count") as total_produucts_ordered,  -- ordered products total count
    SUM("Order_product"."amount") as total_amount,  -- total amount selected as sum of already filled column from "Order_product" table
    SUM("Order_product"."unit_price" * "Order_product"."count") as total_amount_calcualted -- total amount calculated as sum of multiplication "unit_price" * "count" from "Order_product" table
FROM public."Category"
INNER JOIN public."Product" ON "Product"."id_category" = "Category"."id"
INNER JOIN public."Order_product" ON "Order_product"."id_product" = "Product"."id"
INNER JOIN public."Order" ON "Order"."id" = "Order_product"."id_order" and EXTRACT(year FROM "Order"."date") = 2017
GROUP BY "Category"."id";

-- ---------------------------------------------------------------------------------------------------------------------
-- 28 *Show the list of product names along with unit prices and the history of unit prices taken from the orders (show ‘Product name – Unit price – 
--Historical price’). The duplicate records should be eliminated. If no orders were made for a certain product, then the result for this product
--should look like ‘Product name – Unit price – NULL’. Sort the list by the product name.


SELECT DISTINCT p.name_product, p.price , op.unit_price AS historical_price 
FROM "Product" p
LEFT JOIN "Order_product" op ON p.id = op.id_product 
ORDER BY p.name_product;


-- ---------------------------------------------------------------------------------------------------------------------

-- 33. *Change the City field in one of your records using the UPDATE statement (first run the SELECT statement to check whether you are updating the appropriate records!).
UPDATE public."Employee" SET "id_city" = 44 
WHERE "Employee".id = (SELECT "Employee"."id" FROM public."Employee" WHERE "Employee"."notes" = 'Valentyna' ORDER BY "Employee"."id" LIMIT 1 OFFSET 0);



-- 34 *Change the HireDate field in all your records to current date (first run the SELECT statement to check whether you are updating the appropriate records!).

--SELECT * FROM "Employee"
--WHERE notes = 'Yuliya Lapchyk'

UPDATE  "Employee" SET hire_date = now()
WHERE notes = 'Yuliya Lapchyk';
------------------------------------------------------------------------------------------------------------------------
