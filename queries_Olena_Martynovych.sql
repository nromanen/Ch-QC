5.    Calculate the count of employees from London.
SELECT COUNT (*) FROM public.employee WHERE id_city=3;


12.    Show first, last names and dates of birth of the employees who celebrate their birthdays this month.
SELECT first_name, last_name, date_birth
FROM public.employee 
WHERE (EXTRACT(MONTH FROM date_birth)=10);

19.    Show the list of french customers’ names who have made more than one order (use a subquery).
SELECT customer.id, customer.first_name, customer.last_name from public.customer WHERE
(SELECT COUNT(public.order.id) FROM public.order where customer.id=public.order.id_customer)>1 AND id_country=1
ORDER BY public.customer.id;

26.    *Show the total ordering sums calculated for each customer’s country for domestic and non-domestic products separately (e.g.: “France – French products ordered – Non-french products ordered” and so on for each country).

SELECT country.name, category.name, 
SUM  
(order_item.count*order_item.historical_price) as total_sum FROM public.country 
JOIN public.city ON country.id = city.id_country
JOIN public.order o ON city.id=o.id_city_ship_adr_ 
JOIN public.order_item ON order_item.id_order=o.id
JOIN public.product ON order_item.id_product=product.id
JOIN public.category ON category.id=product.id_category
WHERE country.id=1 
GROUP BY country.name, category.name;


33.    *Change the City field in one of your records using the UPDATE statement (first run the SELECT statement to check whether you are updating the appropriate records!).
UPDATE public.city
	SET name=Osakka
	WHERE id=13;

