-- QUESTION 1
Select concat(authors.au_lname, ', ', authors.au_fname) as 'name',
city, state, titles.title, titles.type
from authors 
left outer join titleauthor on authors.au_id = titleauthor.au_id
left OUTER JOIN titles on titleauthor.title_id = titles.title_id
where (state in ('CA', 'TN') )
order by name

-- Question 2
insert into employee values 
(
    'TYS54321M', 'John', null,  'Smith', 12, 25, '0877', '2012-04-01'
)

-- Question 3
select title, price, (price + price*0.05) as 'price'
from titles
where price > 20
union 
select title, price, (price + price*0.1) as 'new_price'
from titles
where price between 15 and 20

-- Question 4
select stores.stor_id, stores.stor_name, sum(sales.qty),
sum(titles.ytd_sales)
from stores 
inner join sales on stores.stor_id = sales.stor_id 
INNER join titles on sales.title_id = titles.title_id
GROUP by stores.stor_id, stores.stor_name
having sum(qty) > 10

select sales.stor_id, st.stor_name, sum(sales.qty) as 'quantity', sum(ytd_sales) as ytd_sales
from stores st 
inner join sales
inner join titles ti on sales.title_id = ti.title_id
ON st.stor_id = sales.stor_id
group by sales.stor_id, st.stor_name
having sum(qty) > 10

-- question 5
select au_lname, au_fname
from authors
inner join titleauthor on authors.au_id = titleauthor.au_id
where authors.state = 'CA'
GROUP by au_lname, au_fname
HAVING count(1) > 1

select au_lname, au_fname
from authors
inner join titleauthor on authors.au_id = titleauthor.au_id
where authors.state like 'C%'
GROUP by au_lname, au_fname
HAVING count(1) > 1


select au_lname, au_fname
from authors
inner join titleauthor on authors.au_id = titleauthor.au_id
where authors.state = 'CA'
GROUP by au_lname, au_fname
HAVING count(1) > 1



select au_lname, au_fname
from authors auth
inner join titleauthor titleauth 
inner join titles title on titleauth.title_id = title.title_id on
auth.au_id = titleauth.au_id 
where auth.state = 'CA'
group by au_lname, au_fname 
having count(*) > 1

-- question 6

select stor_id, ord_num, qty, avg(qty) over (PARTITION by stor_id) as 'Average by Stor id',sum(qty) over (PARTITION by stor_id), sum(qty) over (order by stor_id)
from sales


select * from authors
select * from sales

select stor_id, ord_num, qty, avg(qty) over (partition by stor_id) as 'Average by Store ID', sum(qty) over (ORDER by stor_id) as 'SubTotal by Store ID', sum(qty) over (order by stor_id) as 'Running Total'
from sales



select concat(a.au_lname,', ',a.au_fname) as name,a.city, a.state, t.title, t.type
from authors a
left outer join titleauthor ta ON a.au_id= ta.au_id
left outer join titles t ON ta.title_id = t.title_id
where a.state ='ca'or a.state = 'TN'
order by au_lname


-- PART B
--question 1
select substring(title, 1, 30) as title, ord_num, ord_date, stor_name
from titles
left outer join sales on titles.title_id = sales.title_id
left outer join stores on sales.stor_id = stores.stor_id
order by ord_num

--question 2
insert into titles (title_id, title, type, pub_id, price, pubdate) values 
('ZZ1234','Microsoft SQL Server','computer','0877',89.99, '2008-09-29'),
('TT2345','Designing Databases','computer','1389',168.98, '2009-01-01')

--question 3
select sales.ord_num, sales.stor_id, stores.stor_name, sales.qty, titles.price, (sales.qty * titles.price) as order_cost
from sales
left outer join titles on titles.title_id = sales.title_id
left OUTER join stores on sales.stor_id = stores.stor_id
WHERE ((sales.qty*titles.price) > 150.00) AND ((sales.qty*titles.price) < 500.00)

-- question 4
UPDATE titles
SET price = (price * 1.1)
WHERE title_id = 'ZZ1234'

--question 5
select title_id, title, price, type
into BusinessBooks
from titles
where type = 'business'

--question 6
delete from titles
where (title_id = 'ZZ1234') or (title_id = 'TT2345')

--question 7
SELECT type, price,
SUM(price) OVER (PARTITION BY type) AS 'PARTITION',
SUM(price) OVER (ORDER BY type) AS 'ORDER',
sum(price) over (PARTITION BY price ORDER by type) as 'TOtal'
FROM titles

--question 8
SELECT au_ID, concat(au_fname,' ',au_lname) AS Name, city, state
FROM authors
WHERE state = 'CA'
-- UNION
SELECT pub_id, pub_name, city, state
FROM publishers
WHERE state IS NOT NULL
ORDER BY state

SELECT au_ID, concat(au_fname,' ',au_lname) AS Name, city, state
FROM authors
WHERE state = 'CA'
UNION all
SELECT pub_id, pub_name, city, state
FROM publishers
WHERE state IS NOT NULL
ORDER BY state

-- question 9
SELECT type, pub_name, SUM(qty), MIN(price)
FROM titles
JOIN publishers ON titles.pub_id = publishers.pub_id
JOIN sales ON titles.title_id = sales.title_id
GROUP BY type, pub_name

--question 10
select stor_id, ord_num, ord_date, sum(qty) as sum_quantity
from sales
group by stor_id, ord_date, ord_num
having sum(qty) BETWEEN 10 and 50


UPDATE EMPLOYEE
SET JOB_CODE = 502
WHERE JOB_CODE = 501

DELETE FROM EMPLOYEE
WHERE (EMP_FNAME ='William' and EMP_LNAME = 'Smithfield' and JOB_CODE = 500)

UPDATE EMPLOYEE 
SET JOB_CODE = 500
WHERE EMP_NUM = 101

INSERT INTO EMPLOYEE (EMP_NUM, EMP_LNAME, EMP_FNAME, EMP_INITIAL,
EMP_HIREDATE, JOB_CODE) VALUES 
(105, 'Johnson', 'Alice', 'K', '01-Feb-93', 502),
(106, 'Smithfield', 'William', null, '22-Jun-04', 500);

Select * From INVOICE
Where INV_AMOUNT > 300
order by ASC

UPDATE CUSTOMER
SET CUST_DOB = '1979-03-15'
WHERE CUST_NUM = 1000

UPDATE CUSTOMER
SET CUST_DOB = '1988-12-22'
WHERE CUST_NUM = 1000

alter table CUSTOMER
add CUST_DOB date,
CUST_AGE int

select inv_num, inv_amount, avg(inv_amount)
from INVOICE

SELECT SUBSTRING(EMP_LNAME, 1, 3) 
FROM EMPLOYEE





