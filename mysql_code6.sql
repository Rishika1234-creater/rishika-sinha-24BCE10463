show tables from vitcampus;

use vitcampus;

select * from worker;

select first_name, department, salary 
from worker
where department = 'Admin' or salary >= 100000;

select worker_id, first_name, department, salary 
from worker
where worker_id not in (1, 6, 7);

select * from worker 
where salary not between 110000 and 300000;

select * from worker 
where salary between 110000 and 300000;

select * from worker
where salary between 100000 and 500000
and department not in ('HR', 'Admin');

select * from worker 
where first_name like '_ia%';

select * from worker 
where first_name like '%h';

select * from worker 
where first_name like 'v__';

select sum(salary) from worker;

SELECT * FROM vitcampus.worker
WHERE department = 'Admin'
  AND salary < 800000
  AND first_name NOT LIKE '%A%';

select distinct(department) from worker;

select worker_id, first_name, 
case 
    when salary > 300000 then 'Rich people'
    when salary >= 100000 and salary <= 300000 then 'Middle'
    else 'Poor'
end as Status
from worker;

select min(salary) from worker where department = 'Admin';

select max(salary) from worker where department = 'Admin';

create view minSalaryAdmin as 
select min(salary) as min_salary 
from worker 
where department = 'Admin';

create view maxSalaryAdmin as 
select max(salary) as max_salary 
from worker 
where department = 'Admin';

select * from maxSalaryAdmin;
select * from minSalaryAdmin;