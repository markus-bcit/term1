-- Q1
select title_id 
from titles 
where (advance >= 2000) and (advance <= 4000)

-- Q2
select stor_id, ord_num, ord_date, convert(varchar(12),
dateadd(day, 10, ord_date), 102) as NewOrderDate
from sales
where (qty < 15)

-- Q3
select avg(ytd_sales) as 'AverageYTDSales', min(ytd_sales) as 'MinimumYTDSale', 
max(ytd_sales) as "MaximumYTDSales"
from titles

-- Q4
select au_id, CONCAT(au_lname, ', ', au_fname) as 'name', 
concat('(',SUBSTRING(phone, 1, 3),') ',SUBSTRING(phone, 5, 8)) as phone,  state
from authors
order by name

-- Q5
select title_id, title, concat('Price is ', price) as 'price', advance, 
format(pubdate, 'dd MMM yyyy') as 'pubdate'
from titles 
where (advance >= 5000) and ((format(pubdate, 'dd MMM yyyy') = '12 Jun 1991') 
or (format(pubdate, 'dd MMM yyyy') = '30 Jun 1991'))
order by title 

-- Q6
select title_id, lorange, hirange, royalty
from roysched
where (royalty >= 15) and (royalty <= 20)
order by title_id

-- Q7
select title_id, title, type, price 
from titles 
where notes is not null 

-- Q8
select au_id, CONCAT(au_fname, ' ', au_lname) as 'name', phone, city, zip
from authors
where (city = 'Oakland' or city = 'San Francisco' or city = 'Berkeley' ) 
and (zip = '94609' or zip = '94130' or zip = '94705')
order by name

-- Q9
select emp_id, CONCAT(lname, ', ', fname) as 'name', year(hire_date) as hire_date, 
((datediff(DAY, hire_date, '2010-06-01')) / 365) as years_worked
from employee
order by name

-- Q10
select emp_id, fname, lname, job_id, format(hire_date, 'MMM dd yyyy') as hire_date
from employee
where (SUBSTRING(lname, 1, 1) = 'l' or SUBSTRING(lname, 1, 1) = 't') and (hire_date >= '1990-01-01')
order by lname

