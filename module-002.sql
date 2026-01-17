Q1.Show the name and salary of all employees.
select  full_name, salary
from employees;

Q2.Show the employees whose salary is greater than 40,000.
select * from employees
where salary>40000;

Q3.Show all employees who work in Dhaka city.
select * from employees
where city = 'Dhaka';

Q4.Show the names of employees in the IT department.
select full_name from employees
where department = 'IT';

Q5.Show the name, age, and salary of employees whose age is less than 30.
select full_name, age, salary from employees
where age <30;

Q6.Show how many employees are in Khulna city.
select * from employees
where city = 'Khulna';

Q7.Show the names of employees older than 35.
select full_name from employees
where age=35;

Q8.Show the list of employees whose salary is between 30,000 and 40,000.
select * from employees
where salary between 30000 and 40000;

Q9.Show employees where department = 'HR' AND city = 'Dhaka'.
select * from employees
where city='Dhaka' and department = 'HR';

Q10.Show the name, department, and salary of employees whose name starts with 'R'.
select full_name, department, salary from employees
where full_name like 'R%';

Q11.Show all unique departments.
select distinct department
from employees;

Q12.Show all unique cities.
select distinct city 
from employees;

Q13.Show unique cities where IT department employees work.
select distinct city from employees
where department = 'IT';

Q14.Show distinct departments in Dhaka city.
select distinct department from employees
where city = 'Dhaka';

Q15.Show how many distinct salary values exist.
select distinct salary 
from employees;

Q16.Count the total number of employees.
select count(*) as total_employee
from employees;

Q17.Count how many employees work in the HR department.
select count(*) as total_employee 
from employees
where department = 'HR';

Q18.Count the number of employees in each city.
select department, count(*) as total_employee
from employees
group by department;

Q19.Count how many employees have a salary ≥ 50,000.
select count(*) as total_employee
from employees
where salary >=50000;

Q20.Count how many employees are younger than 30.
select count(*) as young_employees
from employees
where age <30;

Q21.Find the total salary of all employees.
select   sum(salary) as total_salary
from employees;

Q22.Find the total salary of the Sales department.
select  sum(salary) as total_salary
from employees
where department = 'Sales';

Q23.Show the total salary for each department.
select department, sum(salary) as total_salary
from employees
group by department;

Q24.Show the total salary for each city.
select city, sum(salary) as toal_salary
from employees
group by city;

Q25.Find the total salary for Dhaka city.
select sum(salary) as total_salary
from employees
where city = 'Dhaka';

Q26.Find the average salary of the entire company.
select round (avg(salary),2) as averagr_salary
from employees;

Q27.Find the average salary of the IT department.
select round(avg(salary),2) as average_salary
from employees
where department = 'IT';

Q28.Show the average salary of each department.
select department, round(avg(salary),2) as average_salary
from employees
group by department;

Q29.Show the average salary of each city.
select city, round(avg(salary),2) as average_salary
from employees
group by city;

Q30.Find the average salary of employees older than 30.
select  round(avg(salary),2) as average_salary
from employees
where age>30;

Q31.Find the highest salary in the company.
select max(salary) from employees;

Q32.Find the lowest salary in the company.
select min(salary)
from employees;

Q33.Show the highest salary in each department.
select department, max(salary) as max_salary
from employees
group by department;

Q34.Show the lowest salary in each city.
select city, min(salary) as lowest_salary
from employees
group by city;

Q35.Show who has the highest salary in the Sales department.
select max(salary) as max_salary
from employees
where department = 'Sales';

Q36.Show employee count by department.
select department, count(*) as total_employee
from employees
group by department;

Q37.Show employee count by city.
select city, count(*) as total_employees
from employees
group by city;

Q38.Show the average salary of each city.
select city, round(avg(salary),2) as average_salary
from employees
group by city;

Q39.Show the minimum, maximum, and average salary for each department.
select department, max(salary) as max_salary , min(salary) as minimum_salary, round(avg(salary),2) as average_salary
from employees 
group by department;

Q40.Show employee count grouped by age.
select age, count(*) as count_by_age
from employees
group by age;

Q41.Show departments where the average salary is greater than 40,000.
select department, round(avg(salary),2) as average_salary
from employees
group by department
having round(avg(salary),2) >40000;

Q42.Show cities where the total salary is more than 250,000.
select city, sum(salary) as total_salary
from employees
group by city
having sum(salary)>250000;

Q43.Show departments that have 13 or more employees.
select department, count(*) as total_employee
from employees
group by department
having count(*) > 13;

Q44.Show cities where the average age is greater than 30.
select city, round(avg(age),2) as average_age
from employees
group by city
having round(avg(age),2) >30 ;

Q45.Show departments where the maximum salary is 55,000 or more.
select department,max(salary) as maximum_salary
from employees
group by department
having max(salary) > 55000;

Q46.Show all employees ordered by salary in descending order.
select * from employees
order by salary desc;

Q47.Show all employees ordered by age in ascending order.
select * from employees
order by age asc;

Q48.Show the top 5 employees with the highest salaries.
select * from employees
order by salary desc
limit 5;

Q49.Show the bottom 5 employees with the lowest salaries.
select * from employees
order by salary asc
limit 5;

Q50.Show IT department employees ordered by salary (highest to lowest).
select *  from employees
where department = 'IT'
order by salary desc;





