--question 1
select au_id, au_fname, au_lname
from authors 
where au_id not IN (
    select au_id
    from titleauthor
)
drop VIEW vw_employee_jobs
--question 2
create view vw_employee_jobs
as
select lname, fname, employee.job_id, jobs.job_desc
FROM employee, jobs 
where employee.job_id = jobs.job_id

Create view vw_employee_jobs
As 
	Select emp_id, fname, lname, employee.job_id, jobs.job_desc
	From employee, jobs

--question 3
select CONCAT(lname, ', ', fname) as name, job_desc
from vw_employee_jobs
where job_id in (3,4,10)
order by job_desc

--question 4
create INDEX emp_name_hire_x 
on employee(lname, hire_date)

drop index emp_name_hire_x
on employee

--question 5
select stor_name, stor_address, city, 
state = case state 
when 'CA' then 'California'
when 'WA' then 'Washington'
when 'OR' then 'Oregon'
else 'unknown'
end
from stores


SELECT p.pub_name
FROM publishers p
WHERE 'business' IN
( SELECT t.type
FROM titles t
WHERE t.pub_id = p.pub_id )

SELECT pub_name
FROM publishers
WHERE pub_id IN
( SELECT pub_id
FROM titles
WHERE type = 'business' )


select * from titleauthor
select * from authors