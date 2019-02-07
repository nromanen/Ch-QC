#4

SELECT first_name, last_name, birth_date, extract(years from age("birth_date"))  
FROM public.employee inner join public.person on person_id = person.id 
where extract(years from age("birth_date")) > 55 order by last_name ASC;


#13

SELECT first_name, last_name, city.name
FROM public.city inner join public.order on city.id = city_delivery_id 
inner join employee on employee_id = employee.id
inner join public.person on employee.person_id = person.id  
where city.name LIKE 'Madrid%'


#22

select distinct (last_name, first_name), product.country_id, country.name as c_name, product.name 
as pr_name, pr_country.name as pr_c_name from person 
inner join public.order on person_id = person.id inner join city on city_id = city.id 
inner join country on city.country_id = country.id inner join order_items on order_id = public.order.id 
inner join product on product_id = product.id 
join country as pr_country on pr_country.id=product.country_id
where country.name LIKE 'France%' and pr_country.name not in ('France');


#31

INSERT INTO Person (id, last_name, first_name, city_id) 
values (350, 'Thomas', 'Kvit', 42),
(351, 'Amelia', 'Connor', 32),
(352, 'Olivia', 'Callum', 4),
(353, 'Oscar', 'Rhys', 17),
(354, 'James', 'Taylor', 6);
INSERT INTO employee (id, person_id, birth_date, hire_date, address, note) 
values (350, 350, '1950-02-15', '2001-06-08', '645 West 1st Avenue', 'Kolotylo'), 
(351, 352, '1951-3-25', '2004-04-08', '646 West 3st Avenue', 'Kolotylo'),
(352, 353, '1961-3-12', '2006-07-18', '13 West 5st Avenue', 'Kolotylo'),
(353, 354, '1966-6-6', '1989-04-08', '22 West 2st Avenue', 'Kolotylo'),
(354, 351, '1988-8-8', '2015-07-17', '3456 West 1st Avenue', 'Kolotylo');