#2 Show the list of first and last names of the employees from London.

SELECT public.person.first_name, public.person.last_name
from public.employee
join public.person  on employee.person_id=person.id
join public.city  on person.city_id=city.id
where city.name='London'

#11 Show the list of all cities where the employees are from.

SELECT public.city.name
from public.employee
join public.person  on employee.person_id=person.id
join public.city  on person.city_id=city.id

#20 Show the list of customers’ names who used to order the ‘Tofu’ product (use a subquery).

SELECT
"public".person.last_name,
"public".person.first_name,
"public".product."name"
FROM
"public".order_items
INNER JOIN "public"."order" ON "public".order_items.order_id = "public"."order"."id"
INNER JOIN "public".person ON "public"."order".person_id = "public".person."id"
INNER JOIN "public".product ON "public".order_items.product_id = "public".product."id"
WHERE
"public".product."name" = 'Tofu '

#29 *Show the list of employees’ names along with names of their chiefs (use left join with the same table).

SELECT p1.first_name AS employee_name, p2.first_name AS chief_name
FROM employee as e
left join person as p1 on e.person_id=p1.id
left join person as p2 on e.chief_id=p2.id
