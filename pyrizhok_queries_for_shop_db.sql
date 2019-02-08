Hanna Pyrizhok
6. Calculate the greatest, the smallest and the average age among the employees
from London.

SELECT 
    avg(date_part('year',age(e.birth_date))), 
    max(date_part('year',age(e.birth_date))),
    min(date_part('year',age(e.birth_date))) 
from public.employee e  
join public.person p on e.person_id=p.id 
join public.city c on p.city_id=c.id 
where c.name='London'


15. Show first and last names of the employees as well as the count of orders each
of  them have received during the year 1997

SELECT p1.first_name, p1.last_name, count(o1.id)
FROM public.order o1, public.employee e1, public.person p1 
where EXTRACT(YEAR FROM o1.shipped_date) = '1997'
AND o1.employee_id = e1.id
AND e1.person_id = p1.id
group by p1.first_name, p1.last_name
 

24. Show the list of french customers’ names who used to order french products.

SELECT p.first_name
FROM person p
JOIN city c on c.id=p.city_id
JOIN country c1 on c1.id=c.country_id
JOIN "order" o on o.person_id=p.id
JOIN order_items ON order_items.order_id = o.id
JOIN product ON product.id=order_items.product_id
JOIN country c2 on c2.id=product.country_id
WHERE c1.name='France'
AND c2.name='France'
GROUP BY p.first_name


33. Change the City field in one of your records using the 
UPDATE statement (first run the SELECT statement to check whether you are updating 
the appropriate records!).

1) SELECT p.first_name, c.name, p.city_id, note, e.id
FROM person p
JOIN city c on c.id=p.city_id
join employee e on e.person_id=p.id
WHERE note='Hanna Pyrizhok'

2) UPDATE person p SET city_id=16 from  employee e WHERE e.person_id=p.id and e.id=501