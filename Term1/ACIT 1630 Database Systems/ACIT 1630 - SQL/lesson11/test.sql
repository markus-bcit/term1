WHERE V_STATE IN ('TN', 'FL', 'GA')


create table customer 
(
    name int
)

INSERT into customer VALUES
(
    123,2020-04-10
)

alter table CUSTOMER
add CUST_DOB date, 
CUST_AGE age

Create type age 
from convert(varchar(12), dateadd(day, 10, CUST_DOB), 102) 


alter table CUSTOMER
add (CUST_DOB - getdate())

UPDATE CUSTOMER
SET CUST_DOB = '1979-03-15'
WHERE CUST_NUM = 1000

select inv_num, inv_amount, avg(inv_amount)
from INVOICE

Select *
From INVOICE
Where INV_AMOUNT > 300
ORDER BY asc

INSERT INTO customer (EMP_NUM, EMP_LNAME, EMP_FNAME, EMP_INITIAL, EMP_HIREDATE, JOB_CODE) VALUES 
(105, 'Johnson', 'Alice', 'K', '01-Feb-93', 502),
(106, 'Smithfield', 'William', null, '22-Jun-04', 500)

select * from customer

UPDATE customer 
SET CUST_DOB = '2020-02-29'
WHERE name = 123

CREATE VIEW publishers
AS



SELECT a.au_fname, a.au_lname,t.title, a.city
FROM authors a INNER JOIN titleauthor ta
ON a.au_id = ta.au_id INNER JOIN titles t
ON ta.title_id = t.title_id
WHERE a.city = 'Oakland'

SELECT a.au_fname, a.au_lname,t.title, a.city
FROM authors a INNER JOIN titleauthor ta
ON a.au_id = ta.au_id INNER JOIN titles t
ON ta.title_id = t.title_id
WHERE a.city like 'and%'
