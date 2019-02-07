#7.Calculate the greatest, the smallest and the average age of the employees for each city.

Select MIN(age(now(), birth_date)) as min_date, 
MAX(age(now(), birth_date)) as max_date,
sum(age(birth_date))/count(employee.id) as avg_date,
person.city_id as city_id
from employee
join person on person.id = employee.person_id
group by person.city_id
order by person.city_id;



#16.Show first and last names of the employees as well as the count of their orders shipped after required date during the year 1997 (use left join).

Select person.first_name, person.last_name, "order".id, "order".shipped_date
from employee 
join person on person.id = employee.person_id
left join "order" on employee.id = "order".employee_id
where DATE_PART('year', "order".shipped_date::date) - DATE_PART('year', '1997-01-01'::date) = 0;



#25.Show the total ordering sum calculated for each country of customer.

Select sum(product.price) as total_ordering_sum, country.name as country_name 
from "order"
join order_items on "order".id = order_items.order_id
join product on product.id = order_items.product_id
join country on product.country_id = country.id
group by country.id;



#34.Change the HireDate field in all your records to current date (first run the SELECT statement to check whether you are updating the appropriate records!).

Select id, hire_date from employee;

Update employee set hire_date = now();
