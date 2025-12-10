A. Basic_SELECT and_WHERE (1–20)
Q1.Show the names of all employees.
select emp_name  
from employee;

Q2.Show emp_id, emp_name, and salary of all employees.
select emp_id, emp_name, salary 
from employee;

Q3.Show the name and salary of employees whose salary is greater than 40,000.
select emp_name, salary from employee
where salary>40000;

Q4.Show employees whose salary is BETWEEN 35,000 AND 45,000.
select * from employee
where salary between 35000 and 45000;

Q5.Show employees whose age is less than 28.
select * from employee
where age <28;

Q6.Show employees whose dept_id = 1.
select * from employee
where dept_id = 1;

Q7.Show employees whose dept_id is IN (2, 3).
select * from employee
where dept_id in (2,3);

Q8.Show employees whose dept_id is NOT IN (4, 5).
select * from employee
where dept_id not in (4,5);

Q9.Show employees whose emp_name starts with 'A%'.
select * from employee
where emp_name like 'A%';

Q10.Show employees whose emp_name ends with '%a'.
select * from employee
where emp_name like '%a'

Q11.Show employees whose salary ≥ 50,000 OR age < 25.
select * from employee
where salary>=50000 or age<25 ;

Q12.Show employees whose salary < 40,000 AND dept_id = 3.
select * from employee
where salary <40000 and dept_id =3;

Q13.Show employees whose age is NOT BETWEEN 26 AND 30.
select * from employee
where age not between 26 and 30;

Q14.Show employees whose dept_id IS NULL.
select * from employee
where dept_id = NULL;

Q15.Show employees whose dept_id IS NOT NULL.
select * from employee
where dept_id !=  Null;

Q16.Show names and salary in descending order of salary.
select emp_name , salary from employee 
order by  salary desc;

Q17.Show employees ordered by age in ascending order.
select * from employee
order by age asc;

Q18.Show only DISTINCT dept_id.
select distinct dept_id as unique_id
from employee;

Q19.Find the AVG(salary).
select round(avg(salary),2) as average_salary
from employee;

Q20.Find the MAX(salary).
select max(salary) as maximum_salary
from employee;

B. Aggregate_Functions & GROUP_BY (21–40))
Q21.Show total salary by dept_id.
select dept_id, sum(salary) as total_salary
from employee
group by  dept_id;

Q22.Show average salary by dept_id.
select dept_id, round(avg(salary),2) as average_salary
from employee
group by dept_id;

Q23.Show minimum salary by dept_id.
select dept_id , min(salary) as minimum_salary
from employee
group by dept_id;

Q24.Show maximum salary by dept_id.
select dept_id,max(salary) as maximum_salary
from employee
group by dept_id;

Q25.Show employee count by dept_id.
select dept_id, count(emp_id) as total_emp
from employee
group by dept_id;

Q26.Show employee count by dept_id where salary > 45,000.
select dept_id, count(emp_id) as total_emp
from employee
where salary>45000
group by dept_id;

Q27.Show employee count by dept_id where age < 30.
select dept_id, count(emp_id) as total_emp
from employee
where age<30
group by dept_id;

Q28.Show dept_id where AVG(salary) > 40,000.
select dept_id, round(avg(salary),2) as average_salary
from employee
group by dept_id
having round(avg(salary),2) > 40000;

Q29.Show dept_id having COUNT(emp_id) > 5.
select dept_id , count(emp_id) 
from employee
group by dept_id
having count(emp_id) >5;

Q30.Show dept_id having MAX(salary) > 50,000.
select dept_id, max(salary) as maximum_salary
from employee
group by dept_id
having max(salary)>50000;

Q31.Show total salary by dept_id in ascending order.
select  dept_id , sum(salary) as total_salary
from employee
group by dept_id  
order by total_salary asc;

Q32.Show average salary by dept_id in descending order.
select dept_id, round(avg(salary),2) as average_salary
from employee
group by dept_id
order by average_salary desc;

Q33.Show employees with salary > 40,000 and dept_id 1 or 2.
select * from employee
where salary > 40000 and dept_id in (1  , 2);

Q34.Show employee names from dept_id = 3 OR dept_id = 4.
select * 
from employee
where dept_id in (3,4);


Q35.Show the number of employees whose dept_id IS NULL.
select count(null) as total_employee
from employee;

Q36.Show employees where age ≥ 30 AND salary ≥ 50,000.
select * 
from employee
where age>=30 and salary>=50000;

Q37.Show AVG(age) by dept_id.
select dept_id , round(avg(age),2) as average_age
from employee
group by dept_id;

Q38.Show MIN(age) and MAX(age) by dept_id.
select dept_id,max(age) as maximum_age , min(age) as minimum_age
from employee
group by dept_id;

Q39.Show employees where salary > 45,000 AND age < 30.
select * 
from employee
where salary >45000 and age < 30;

Q40.Show employees where age BETWEEN 25 AND 30 AND dept_id IS NOT NULL.
select * from employee
where age between 25 and 30  and dept_id in(5,2,1) ;

C. JOIN_Practice (41–70)
Q41.INNER JOIN Employee and Department → show employee name and dept_name.
select e.emp_name, d.dept_name 
from employee e
inner join department d 
on d.dept_id = e.dept_id;

Q42.LEFT JOIN Employee and Department → show all employees with dept_name.
select e.emp_id, e.emp_name, e.age, e.salary, e.dept_id, d.dept_name
from employee e
left join department d
on d.dept_id = e.dept_id;

Q43.RIGHT JOIN Employee and Department → show all departments, missing employee = NULL.
select d.dept_id, d.dept_name, d.location, e.emp_id
from employee e 
right join department d
on e.dept_id = d.dept_id
where e.emp_id is null;

Q44.FULL OUTER JOIN Employee and Department.
select *  
from employee e
full outer join department d
on e.dept_id = d.dept_id;

Q45.INNER JOIN employees with salary > 40,000 and show dept_name.
select e.emp_id, e.emp_name, e.salary, e.age, e.dept_id,d.dept_name
from employee e
inner join department d
on e.dept_id = d.dept_id
where e.salary>40000;

Q46.LEFT JOIN employees whose dept_id IS NULL.
select *
from employee e 
left join department d
on e.dept_id = d.dept_id
where e.dept_id is null;

Q47.INNER JOIN employees whose department location = 'Dhaka'.
select *
from employee e 
inner join department d
on e.dept_id  = d.dept_id
where d.location = 'Dhaka';

Q48.INNER JOIN employees where location NOT IN ('Dhaka', 'Chittagong').
select *
from employee e 
inner join department d 
on e.dept_id = d.dept_id
where location not in ('Dhaka', 'Chittagong');

Q49.INNER JOIN employees age < 28 AND dept_name = 'IT'.
select *
from employee e 
inner join department d 
on e.dept_id = d.dept_id
where e.age<28 and d.dept_name ='IT';

Q50.INNER JOIN employees salary BETWEEN 35,000 AND 45,000 AND dept_name = 'HR'.
select *
from employee e 
inner join department d
on e.dept_id = d.dept_id 
where e.salary between 35000 and 45000 and d.dept_name = 'HR';

Q51.LEFT JOIN employees age < 25 AND dept_name IS NULL.
select *
from employee e 
left join department d 
on e.dept_id = d.dept_id 
where e.age < 25 and d.dept_name is null;

Q52.RIGHT JOIN employees where location = 'Sylhet'.
select * 
from employee e 
right join department d 
on e.dept_id = d.dept_id 
where d.location ='Sylhet';

Q53.FULL OUTER JOIN all employee and department.
select * 
from employee e 
full outer join department d 
on e.dept_id = d.dept_id 
;

Q54.INNER JOIN employees where dept_name LIKE '%Sales%'.
select * 
from employee e 
inner join department d
on e.dept_id = d.dept_id 
where d.dept_name like '%Sales';

Q55.LEFT JOIN employees where salary ≥ 50,000 with dept_name.
select e.emp_id, e.emp_name, e.age, e.salary, e.dept_id , d.dept_name
from employee e 
left join department d 
on e.dept_id = d.dept_id 
where e.salary >= 50000;

Q56.RIGHT JOIN employees where dept_name = 'Finance'.
select * 
from employee e 
right join department d
on e.dept_id = d.dept_id 
where d.dept_name = 'Finance';

Q57.FULL OUTER JOIN employees where dept_id IS NULL.
select * 
from employee e 
full outer join department d 
on e.dept_id = d.dept_id
where d.dept_id is null;

Q58.INNER JOIN employees ordered by salary DESC.
select *
from employee e 
inner join department d 
on e.dept_id = d.dept_id
order by e.salary desc;

Q59.LEFT JOIN employees ordered by age ASC.
select *
from employee e 
left join department d 
on e.dept_id = d.dept_id 
order by age asc;

Q60.INNER JOIN employees where dept_name = 'IT' OR 'HR'.
select * 
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.dept_name in ('IT' ,'HR');

Q61.INNER JOIN employees where salary > 40,000 AND location = 'Khulna'.
select * 
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where e.salary >40000 and d.location ='Khulna';

Q62.LEFT JOIN employees where dept_id IS NOT NULL with dept_name.
select e.emp_id , e.emp_name , e.age, e.salary, e.dept_id , d.dept_name
from employee e 
left join department d 
on e.dept_id = d.dept_id 
where d.dept_id is not null;

Q63.INNER JOIN employees where dept_id = 1 OR 3.
select *
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.dept_id in(1,3);

Q64.LEFT JOIN employees salary < 35,000 with dept_name.
select e.emp_id , e.emp_name , e.age, e.salary, e.dept_id , d.dept_name 
from employee e 
left join department d 
on e.dept_id = d.dept_id 
where e.salary <35000;

Q65.FULL OUTER JOIN employees where age BETWEEN 25 AND 30.
select * 
from employee e 
full outer join department d 
on e.dept_id = d.dept_id 
where e.age between 25 and 30;

Q66.INNER JOIN employees where dept_name IN ('Marketing', 'Finance').
select *
from employee e 
inner join department d
on e.dept_id = d.dept_id 
where d.dept_name in ('Marketing','Finance');

Q67.LEFT JOIN employees where dept_id IS NULL AND salary > 30,000.
select *
from employee e 
left join department d 
on e.dept_id = d.dept_id 
where d.dept_id is null and e.salary >30000;

Q68.RIGHT JOIN employees where salary BETWEEN 40,000 AND 50,000.
select *
from employee e
right join department d 
on e.dept_id = d.dept_id 
where e.salary between 40000 and 50000;

Q69.INNER JOIN employees where location NOT IN ('Dhaka', 'Sylhet').
select *
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.location not in('Dhaka', 'Sylhet');

Q70.FULL OUTER JOIN employees where age ≥ 30.
select * 
from employee e 
full outer join department d 
on e.dept_id = d.dept_id 
where e.age >=30;

D. UNION_and_UNION ALL (71–90)
Q71.Show employee names from Dhaka and Chittagong using UNION.
select e.emp_name 
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.location = 'Dhaka'

union 

select e.emp_name 
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.location = 'Chittagong';

Q72Show employee names from Dhaka and Chittagong using UNION ALL.
select e.emp_name 
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.location = 'Dhaka'

union all

select e.emp_name 
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.location = 'Chittagong';

Q73.Show employee names from dept_id = 1 and dept_id = 2 using UNION.
select e.emp_name
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.dept_id =1

union

select e.emp_name 
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.dept_id =2;

Q74.Show employee names from dept_id = 3 and dept_id = 4 using UNION ALL.
select e.emp_name
from employee e
inner join department d 
on e.dept_id = d.dept_id 
where d.dept_id = 3

union all

select e.emp_name 
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.dept_id =4 ;

Q75.Show employee names salary > 45,000 and salary < 40,000 using UNION.
select e.emp_name 
from employee e 
inner join department d 
on e.dept_id =d.dept_id 
where e.salary >45000

union 

select e.emp_name 
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where e.salary<40000;

select emp_name from employee where salary >45000
union 
select emp_name from employee where salary<40000;

Q76.Show employee names from Khulna and Sylhet using UNION ALL.
select e.emp_name, d.location
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.location  = 'Khulna'

union all

select e.emp_name, d.location
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.location = 'Sylhet';

Q77.Show employee names dept_name = 'IT' and dept_name = 'HR' using UNION.
select e.emp_name, d.dept_name
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.dept_name = 'IT'

union 

select e.emp_name, d.dept_name
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.dept_name ='HR';

Q78.Show employee names dept_name IN ('Sales', 'Marketing') using UNION ALL.
select e.emp_name ,d.dept_name
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.dept_name = 'Sales'

union all

select e.emp_name ,d.dept_name
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.dept_name ='Marketing';

Q79.Show employee names dept_name = 'Finance' and salary > 50,000 using UNION.
select e.emp_name,e.salary,d.dept_name
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.dept_name = 'Finance' and e.salary >50000

union 

select e.emp_name,e.salary,d.dept_name
from employee e
inner join department d 
on e.dept_id = d.dept_id
where e.salary > 50000 and d.dept_name ='Finance' ;

Q80.Show employee names age BETWEEN 25 AND 30 using UNION ALL.
select emp_name , age 
from employee 
where age between 25 and 30

union all

select emp_name, age  
from employee 
where age between 25 and 30;

Q81.Show employee names whose dept_id IS NULL using UNION.
select e.emp_name
from employee e 
inner join department d 
on e.dept_id = d.dept_id
where d.dept_id is null

union 

select e.emp_name 
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.dept_id is null;

Q82.Show employee names whose dept_id IS NOT NULL using UNION ALL.
SELECT emp_name
FROM employee
WHERE dept_id IS not NULL

UNION all

SELECT emp_name
FROM employee
WHERE dept_id IS not NULL;

Q83.Show employee names, location, salary ≥ 40,000 using UNION.
select e.emp_name ,d.location,e.salary
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where e.salary>=40000

union

select e.emp_name,d.location,e.salary
from employee e 
inner join department d 
on e.dept_id = d.dept_id
where e.salary >=40000;

Q84.Show employee names ,location salary ≤ 35,000 using UNION ALL.
select e.emp_name ,d.location,e.salary
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where e.salary <=35000

union

select e.emp_name,d.location,e.salary
from employee e 
inner join department d 
on e.dept_id = d.dept_id
where e.salary <=35000;

Q85.Show employee names dept_id = 1 OR 3 using UNION.
select e.emp_name,d.dept_id
from employee e 
inner join department d 
on e.dept_id = d.dept_id
where d.dept_id=1

union

select e.emp_name , d.dept_id
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.dept_id =3;

Q86.Show employee names dept_id = 2 OR 4 using UNION ALL.
select e.emp_name,d.dept_id
from employee e 
inner join department d 
on e.dept_id = d.dept_id
where d.dept_id=2

union all

select e.emp_name , d.dept_id
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.dept_id =4;

Q87.Show employee names location = 'Dhaka' OR 'Chittagong' using UNION.
select e.emp_name, d.location
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.location ='Dhaka'

union 

select e.emp_name, d.location
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.location = 'Chittagong';

Q88.Show employee names location NOT IN ('Sylhet', 'Rajshahi') using UNION ALL.
select e.emp_name, d.location
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.location not in ('Sylhet','Rajshahi')

union 

select e.emp_name, d.location
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.location not in  ('Sylhet','Rajshahi');

Q89.Show employee names dept_name LIKE '%IT%' using UNION.
select e.emp_name ,d.dept_name
from employee e
inner join department d 
on e.dept_id =d.dept_id
where d.dept_name like '%IT'

union 

select e.emp_name ,d.dept_name
from employee e
inner join department d 
on e.dept_id =d.dept_id
where d.dept_name like '%IT';

Q90.Show employee names dept_name LIKE '%HR%' using UNION ALL.
select e.emp_name ,d.dept_name
from employee e
inner join department d 
on e.dept_id =d.dept_id
where d.dept_name like '%HR'

union all

select e.emp_name ,d.dept_name
from employee e
inner join department d 
on e.dept_id =d.dept_id
where d.dept_name like '%HR';


E. Advanced Practice (91–100)
Q91.INNER JOIN employee and department WHERE salary > 40,000 AND location = 'Dhaka'.
select *
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where e.salary >40000 and d.location = 'Dhaka';

Q92.LEFT JOIN employees WHERE dept_id IS NULL AND salary < 35,000.
select *
from employee e 
left join department d 
on e.dept_id = d.dept_id 
where e.salary<35000 and d.dept_id is null;

Q93.FULL OUTER JOIN employee and department WHERE age BETWEEN 25 AND 30.
select *
from employee e 
full outer join department d 
on e.dept_id = d.dept_id 
where e.age between 25 and 30;

Q94.UNION employees WHERE dept_id = 1 AND dept_id = 3.
select *
from employee 
where dept_id =1

union 

select *
from employee 
where dept_id =3;

Q95.UNION ALL employees WHERE dept_id IS NULL OR salary > 45,000.
select *
from employee
where salary > 45000

union all

select *
from employee 
where dept_id is null;

Q96.INNER JOIN employee and department WHERE dept_name IN ('IT', 'HR') AND salary > 40,000.
select *
from employee e 
inner join department d 
on e.dept_id = d.dept_id 
where d.dept_name in ('IT','HR') and salary>40000;

Q97.RIGHT JOIN employees WHERE location = 'Finance' AND age < 30.
select *
from employee e 
right join department d 
on e.dept_id = d.dept_id
where d.location ='Finance' and e.age <30;

Q98.LEFT JOIN employees WHERE dept_id IS NOT NULL AND salary BETWEEN 35,000 AND 45,000.
select *
from employee e 
left join department d 
on e.dept_id = d.dept_id 
where e.salary between 35000 and 45000 and d.dept_id is not null;

Q99.FULL OUTER JOIN employees WHERE dept_name LIKE '%Sales%' OR dept_name LIKE '%Marketing%'.
select *
from employee e 
full outer join department d 
on e.dept_id = d.dept_id 
where dept_name like '%Sales%' or dept_name like '%Marketing%';

Q100.INNER JOIN employees WHERE dept_id IN (1, 2, 3) AND age > 28 ORDER BY salary DESC.
select *
from employee e 
inner join department d 
on e.dept_id = d.dept_id
where d.dept_id in(1,2,3) and e.age >28
order by salary desc;




