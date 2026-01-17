Q1.Show all employee names.
select emp_name
from emp;

Q2.Show all employee salaries.
select  salary
from emp;

Q3.Show employees whose salary > 50,000.
select * 
from emp
where salary > 50000;

Q4.Show employees whose dept_id = 1.
select * 
from emp 
where dept_id =1;

Q5.Show employees whose age < 30.
select * 
from emp 
where age < 30;

Q6.Show employees who joined after 2020.
select * 
from emp 
where joining_date > '2020-12-31';

Q7.Show all unique dept_names.
select  distinct dept_name
from emp ; 

Q8.Show the employee with the highest salary.
select  * 
from emp
where salary =
(select max(salary)
from emp);

Q9.Show the employee with the 2nd highest salary.
select * 
from emp 
where salary = 
(select max(salary)
from emp
where salary < 
(select max(salary)
from emp));

Q10.Show the employee with the 3rd highest salary.
select * 
from emp 
where salary = (
select max(salary)
from emp
where salary< (
select max(salary)
from emp where salary < (
select max(salary)
from emp)));

Q11.Show the employee with the lowest salary.
select * 
from emp 
where salary = (select min(salary)
from emp);

Q12.Show the employee with the 2nd lowest salary.
select * 
from emp
where salary = (select min(salary)
from emp where salary > (select min(salary) from emp));

Q13.Show the employee with the 3rd lowest salary.
select * 
from emp
where salary = (select min (salary)
from emp
where salary > (select min(salary)
from emp 
where salary > (select min(salary) 
from emp)));

Q14.Show the average salary of each department.
select dept_name, round(avg(salary),2)
from emp 
group by dept_name;

Q15.Show all employees whose salary > average salary.
select * 
from emp
where salary > (select round(avg(salary),2)
from emp);

Q16.Show all employees in descending order of salary.
select * 
from emp
order by salary desc;

Q17.Show employee count by dept_id.
select dept_name, count(emp_id)
from emp 
group by dept_name;

Q18.Show the employee with the maximum experience.
select *
from emp
where experience_years = (select max(experience_years)
from emp);

Q20.Show employee names from Dhaka using a subquery.
select *
from emp
where location in (select location
from emp 
where location = 'Dhaka');

Q21.Find the average salary of the IT department using a subquery.
select round(avg(salary),2) as avg_it_salary
from emp 
where dept_id in(
select dept_id 
from emp 
where dept_name = 'IT'
);

Q22.Show employees who joined in the last 3 years using a CTE.
with join_emp as (
select *
from emp
where joining_date >= date_sub(curdate(), interval 3 year)
)
select *
from join_emp;

Q23.Show IT department employees sorted by salary using a CTE.
with cte_salary as (
select *
from emp 
where dept_name = 'IT'
order by salary desc
)
select *
from cte_salary

Q24.Show employees whose salary is between 40,000 and 50,000 use sub query.
select *
from emp 
where emp_name in(
select emp_name 
from emp 
where salary between 40000 and 50000
);

Q25.Show employees whose bonus_percentage > 6 use sub query.
select * 
from emp 
where emp_id in (
select emp_id
from emp 
where bonus_percentage>6
);

Q26.Find the average salary of the IT department.
select round(avg(salary),2) as avg_dept_salary
from emp
where emp_id in (
select emp_id
from emp
where dept_name = 'IT'
);

Q27.Find employees in the IT department whose salary is above the department’s average salary.
select *
from emp
where emp_name ='IT' 
and salary> (
select avg(salary)
from emp
where dept_name ='IT'
);

Q28.Find all employees whose salary is greater than the overall average salary.
select  *
from emp
where salary > (
select avg(salary)
from emp
);

Q29.Find all employees with the maximum experience.
select *
from emp 
where experience_years =
(select max(experience_years)
from emp
);

Q30.Find all employees whose salary is equal to the minimum salary.
select *
from emp
where salary =(
select min(salary)
from emp
);

Q31.Find all employees whose salary is less than the highest salary.
select * 
from emp 
where salary <(
select max(salary)
from emp
);

Q32.Find all employees whose dept_name = (select dept_name from dept where dept_id=2).
select * 
from emp 
where dept_name in (
select dept_name
from emp
where dept_id =2
);

Q33.Find all employees whose joining date = (select max(joining_date) from emp).
select *
from emp
where joining_date in (
select max(joining_date)
from emp
);

Q34.Find all employees whose salary is greater than the median salary.
select *
from emp 
where salary > (
select percentile_cont(0.5)
within group (order by salary)
from emp
);

Q35.Find all employees whose salary is between (select min(salary) from emp) and (select max(salary) from emp)
select *
from emp
where salary between 
( select min(salary) from emp)
and 
(select max(salary) from emp)
;

----CTE Practice
Q36.Use a CTE to show employees who joined in the last 3 years.
with join_date as (
select *
from emp 
where joining_date >= current_date - interval '3 years'
)
select *
from join_date;

Q37.Use a CTE to show all employees in the IT department.
with dept_name as (
select * 
from emp 
where dept_name ='IT'
)
select *
from dept_name;

Q38.Use a CTE to show employees with salary > 50,000.
with salary_info as (
select *
from emp 
where salary >50000
)
select * 
from salary_info;

Q39.Use a CTE to show employees located in Dhaka.
with location_name as (
select * 
from emp 
where location ='Dhaka'
)
select * 
from location_name;

Q40.Use a CTE to find the employee(s) with the maximum salary.
with max_salary as (
select *
from emp 
where salary =(select max(salary) from emp)

)
select * 
from max_salary;

Q41.Use a CTE to find the employee(s) with the minimum salary.
with min_salary as (
select *
from emp 
where salary = (select min(salary) from emp)
)
select *
from min_salary;

Q42.Use a CTE to calculate the average salary.
with avg_salary as (
select round(avg(salary),2) as avg_salary
from emp 
)
select * 
from avg_salary;

Q43.Use a CTE to calculate the department-wise average salary.
with dept_avg_salary as (
select dept_name, round(avg(salary),2)as avg_salary
from emp
group by dept_name
)
select *
from dept_avg_salary;

Q44.Use a CTE to show employees with experience > 5 years.
with experience as (
select *
from emp 
where experience_years >5
)
select *
from experience;

Q45.Use a CTE to show the most recent 5 employees.
with recent_employee as (
select *
from emp 
order by joining_date desc
limit 5

)
select *
from recent_employee;

---Subquery + Aggregation
Q46.Find the employee count for each department.
select dept_name, count(emp) as total_employee
from emp 
group by dept_name;

SELECT dept_name,
       (SELECT COUNT(*)
        FROM emp e2
        WHERE e2.dept_name = e1.dept_name) AS emp_count
FROM emp e1
GROUP BY dept_name;


Q47.Find the maximum salary in each department.
select *
from emp e
where salary = (
select max(salary)
from emp 
where dept_name = e.dept_name
);

Q48.Find the minimum salary in each department.
select *
from emp 
where salary =(
select min(salary) 
from emp
);

Q49.Find the average experience in each department.
select dept_name, 
(select round(avg(experience_years),2) 
from emp e2
where e2.dept_name = e1.dept_name) as avg_experience
from emp e1
group by dept_name;

Q50.Find the number of employees with salary > 50,000 in each department.
select dept_name , count(*) as total_emp
from emp 
where salary>50000
group by dept_name;

SELECT dept_name,
       (SELECT COUNT(*)
        FROM emp e2
        WHERE e2.dept_name = e1.dept_name
          AND e2.salary > 50000) AS emp_count
FROM emp e1
GROUP BY dept_name;

Q51.Find the number of employees who joined in 2022.


Q52.Find the location-wise average salary.
select location, round(avg(salary),2) as avg_salary
from emp 
group by location;

select location, 
(select round(avg(salary),2) as avg_salary
from emp e2
where e2.location = e1.location) as avg_salary
from emp e1
group by location;

Q53.Find the number of employees in the 'HR' department.
select dept_name ,
(select count(*) 
from emp 
where dept_name = 'HR') as total_emp
from emp 
where dept_name ='HR'
group by dept_name;

Q54.Find the maximum salary in the 'IT' department.
select dept_name, 
(select max(salary)
from emp 
where dept_name ='IT') as max_salary
from emp 
where dept_name = 'IT'
group by dept_name;

Q55.Find the minimum salary in the 'Finance' department.
select dept_name,
(select min(salary)
from emp 
where dept_name = 'Finance') as min_salary
from emp 
where dept_name = 'Finance'
group by dept_name;


 

 

