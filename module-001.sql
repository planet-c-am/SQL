Q1.Show all employees whose city = 'Dhaka'
select * from employees
where city = 'Dhaka';

Q2.Show them to those over 30.
select * from employees
where age> 30;

Q3.Who are those whose salary is less than 30,000?
select * from employees
where salary <30000;

Q4.Show rows whose department is not 'IT' (!=).
select * from employees
where department != 'IT';

Q5.Show these only to people over 25 years old.
select * from employees
where age=25;

Q6.Show me those whose salary is equal to 35000.
select * from employees
where salary = 35000;

Q7.Show those with join_date '2021-01-15'.
select * from employees
where join_date = '2021-01-15';

Q8.Find out if the age is not 30 (!= 30).
select * from employees
where age != 30;

Q9.Show all employees whose salary is greater than 40,000.
select * from employees
where salary>40000;

Q10.Show all employees whose salary is less than 28,000.
select * from employees
where salary<28000;

Q11.Show employees whose age > 30 AND salary > 35,000.
select * from employees
where age>30 and salary>35000;

Q12.Show employees whose city is Dhaka OR Chittagong.
select * from employees
where city = 'Dhaka'or city ='Chittagong';

Q13.Show all employees who are NOT from Dhaka (show all other cities).
select * from employees
where city != 'Dhaka';

Q14.Show employees whose department is HR AND city is Rajshahi.
select * from employees
where city = 'Rajshahi' and department ='HR';

Q15.Show employees whose salary > 35,000 OR department = 'Finance'.
select * from employees
where salary>35000 or department='Finance';

Q16.Show employees whose age is BETWEEN 25 AND 30 AND city is Dhaka.
select * from employees
where age BETWEEN 25 AND 30 AND city='Dhaka';

Q17.Show employees who are NOT in the Support department (all except Support).
select * from employees
where department != 'Support';

Q18.Show the records where the city is IN ('Dhaka', 'Sylhet', 'Khulna').
select * from employees
where city in ('Dhaka', 'Sylhet', 'Khulna');

Q19.Show the employees whose department is IN ('IT', 'HR').
select * from employees
where department in('HR', 'IT');

Q20.Show the employees whose department is NOT IN ('Sales', 'Marketing').
select * from employees
where department not in('Sales', 'Marketing');

Q21.Show the employees whose salary is IN (28000, 30000, 35000).
select * from employees 
where salary in(28000,30000,35000);

Q22.Show the students whose age is NOT IN (22, 23, 24).
select * from employees 
where age not in (22,23,24);

Q23.Employees whose age is between 25 and 35.
select * from employees
where age between 25 and 35;

Q24.mployees whose salary is between 30,000 and 40,000.
select * from employees
where salary between 30000 and 40000;

Q25.Employees who joined between 1 Jan 2020 and 31 Dec 2021.
select * from employees
where join_date between '2020-01-01' and '2021-12-31';

Q26.Employees whose employee ID is between 10 and 50.
select * from employees
where emp_id between 10 and 50;

Q27.Names that start with S.
select * from employees
where full_name like 's%';

Q28.Names that end with “an”.
select * from employees 
where full_name like '%an'

Q29.Names that contain “Rahman” in middel.
select * from employees
where full_name like '%Rahman%';

Q30.Cities that contain the letter “a”.
select * from employees
where city like 'a%';

Q31.Two-letter departments where the last letter is “T”.
select * from employees
where department like '%t';

Q32.Show salaries from highest to lowest (DESC).
select * from employees
order by salary desc;

Q33.Show salaries from lowest to highest (ASC).
select * from employees
order by salary asc;

Q34.Sort the records by age.
select * from employees
order by age asc;

Q35.Show cities in alphabetical order.
select * from employees
order by city asc;

Q36.Sort by department, and within each department sort salary in DESC order.
select * from employees
order by department asc ,salary desc;

Q37.Show the Top 5 employees with the highest salary.
select * from employees
order by salary desc
limit 5;

Q38.Show the Bottom 5 employees with the lowest salary.
select * from employees
order by salary asc
limit 5;

Q39.Show the first 10 rows.
select * from employees
order by emp_id asc
limit 10;

Q40.Show the first 3 employees from Dhaka city.
select * from employees
where city = 'Dhaka'
limit 3;

Q41.Display full_name as Name.
select full_name as name
from employees;

Q42.Show salary + 5000 as updated_salary.
update employees
set salary = salary+5000;
select * from employees

Q43.Display department as dept.
select department as dept
from employees;

Q44.Display city as location.
select city as location
from employees;

Q45.Show how many employees are in each department.
select department , count(*) as total_emp
from employees
group by department;

Q46.Find the average salary by city.
select city ,  round(avg(salary),2)  as average_salary
from employees
group by city;

Q47.Find the total salary by department
select department, round(sum(salary)) as total_salary
from employees
group by department;

Q48.Which department has the highest average age?
select department, round(avg(age),2) as average_age
from employees
group by department;

Q49.What is the maximum salary in each city?
select city, max(salary) as max_salary
from employees
group by city;

Q50.Show employee count and average salary by department.
select department , count(emp_id) as total_emp ,round(avg(salary),2) as avg_salary
from employees
group by department;
