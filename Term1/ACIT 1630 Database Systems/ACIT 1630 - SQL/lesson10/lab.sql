
--question 1
select stor_id, ord_num
    from sales
    where (ord_date >= '1994-01-01')

-- question 2
select emp_id, fname, lname, job_id, job_lvl
    from employee 
    where (job_id = '5' or job_id = '10') and (job_lvl > 170)

-- question 3
select emp_id, fname, lname, job_id, job_lvl
    from employee 
    where (job_id = '5' or job_id = '10' and (job_lvl > 170))

-- question 4
select discounttype
from discounts
where (stor_id  is null)

-- question 5
select au_fname, au_lname, phone
from authors 
where (SUBSTRING(phone, 1, 3) = '415')
order by au_lname

--question 6
select concat(SUBSTRING(au_fname, 1, 1), ' ', au_lname) as name, 
CONCAT(city,', ', state) as city
from authors
where (state = 'KS') or (state = 'UT')
order by name

-- question 7
select title_id, concat(royalty, '%') as 'royalty', 
convert(varchar(10), pubdate, 105) as 'pubdate', substring(notes, 1, 30) as 'notes'
from titles
where (price >= '15.00') and (ytd_sales >= 4000)
order by title_id

--question 8
select CONCAT(lname,', ', fname) as 'name', 
convert(varchar(12), hire_date, 109) as 'hire_date'
from employee 
where (SUBSTRING(CONVERT(varchar(12), hire_date, 112), 1, 4) = '1993')

--question 9 
select title_id, title, price, round((price * 1.03), 2) as new_price
from titles
where (type = 'business' or type = 'psychology')

--question 10
select CONCAT(fname, ' ', lname) as name,
2022 - SUBSTRING(CONVERT(varchar(12), hire_date, 112), 1, 4) as years
from employee
where (hire_date <= getdate())
order by years


select hire_date, 
2022 - SUBSTRING(CONVERT(varchar(12), hire_date, 112), 1, 4) as years
from employee
