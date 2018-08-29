-- 3. Show the list of first and last names of the employees whose first name begins with letter A.
SELECT "first_name", "last_name" FROM public."Employee" WHERE "first_name" LIKE 'A%';

-- ---------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------
SELECT  "last_name", "birth_date" FROM public."Employee" 
where "birth_date" = (select min("birth_date") FROM public."Employee" )

-- ---------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------

-- 15. Show first and last names of the employees as well as the count of orders each of them have received during the year 2017 (use a subquery).
SELECT "Employee"."id", "Employee"."first_name", "Employee"."last_name", COUNT(orders."id") orders_count
FROM public."Employee", 
     (SELECT "Order"."id", "Order"."id_employee" FROM public."Order" WHERE EXTRACT(year FROM "date") = 2017) orders
WHERE orders."id_employee" = "Employee"."id"
GROUP BY "Employee"."id";
     
-- ---------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------

-- 21. *Show the list of customers’ names who used to order the ‘Tofu’ product, along with the total amount of the product they have ordered and with the total sum for ordered product calculated.
SELECT "Customer"."id", "Customer"."f_name_customer", "Customer"."l_name_customer",
    SUM("Order_product"."count") as produucts_ordered, -- ordered products total count
    SUM("Order_product"."amount") as total_amount,  -- total amount selected as already filled column from "Order_product" table
    SUM("Order_product"."unit_price" * "Order_product"."count") as total_amount_calcualted -- total amount calculated as sum of multiplication "unit_price" * "count" from "Order_product" table
FROM public."Customer"
INNER JOIN public."Order" ON "Order"."id_customer" = "Customer"."id"
INNER JOIN public."Product" ON "Product"."name_product" = 'Tofu'
INNER JOIN public."Order_product" ON "Order_product"."id_order" = "Order"."id" and "Order_product"."id_product" = "Product"."id"
GROUP BY "Customer"."id";

-- ---------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------

-- 27. *Show the list of product categories along with total ordering sums calculated for the orders made for the products of each category, during the year 2017.
SELECT "Category"."id", "Category"."name_category", 
    SUM("Order_product"."amount") as total_amount, -- total amount selected as sum of already filled column from "Order_product" table
    SUM("Order_product"."unit_price" * "Order_product"."count") as total_amount_calcualted -- total amount calculated as sum of multiplication "unit_price" * "count" from "Order_product" table
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
-- ---------------------------------------------------------------------------------------------------------------------

-- 33. *Change the City field in one of your records using the UPDATE statement (first run the SELECT statement to check whether you are updating the appropriate records!).
UPDATE public."Employee" SET "id_city" = 44 
WHERE "Employee".id = (SELECT "Employee"."id" FROM public."Employee" WHERE "Employee"."notes" = 'Valentyna' ORDER BY "Employee"."id" LIMIT 1 OFFSET 0);
