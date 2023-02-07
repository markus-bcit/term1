
-- number of colums  
select count(*), COUNT(au_id),
count(1), count(5), sum(1),     -->>>> all do the same sdafd 
sum(100) --adds 100 in 23 columns -> 2300
from authors


-- '1' >> order by 1 -> orders by the first column 
--     >> count(1) -> put one in column, count # of 1s
-- NULL VALUES NOT INCLUDED -> should count PK >> no null 

select count(*), count(title_id), count(price)
from titles

select count(1), city, count(city) --> same
from authors    --> 1 author is in Ann Arbor. 2 authors are in berkley ...
GROUP by city --> error without


-- LIL exercise 
-- how many publishers are there?
select count(1)
from publishers

-- how many publishers are there ineach state?
select state, count(1)
from publishers
GROUP by state

-- how many publishers are there in texas?
select count(state) as 'No. of Publishers', state
from publishers
-- where (state = 'TX')
group by state
having state = 'TX' --filters rows and groups


--||order of operations||
-- 5 select
-- 1 from
-- 2 where 
-- 3 group by
-- 4 having
-- 6 order by


select state, count(1) as 'No. of Publishers'
from publishers
group by state
having count(1) > 1 

select state, pub_name, count(1) as 'No. of Publishers' --> error
from publishers
group by state, pub_name --> needs pub_name]

select state, pub_name, 
count(1) over (partition by state) as 'No. of Publishers' 
from publishers

select * from stores

-- show the # of stores from each state
-- with names 
select stor_name, state, 
count(1) over (partition by state) as 'No. of in Each State' 
from stores

select country, count(pub_name) over (order by pub_id) as 'No of Pubs', pub_name
from publishers


select * from discounts

--show all discounts for each discount type 
-- and also show a running total of all discounts
--running total => values added up 

select discount, discounttype,
sum(discount) over (order by discounttype)
from discounts

select * from titles 

--show all titles, and their prices 
-- and runnning total of all their prices 

select title, price, sum(price) over (order by title_id) as 'Running Total'
from titles

--show all titles, and their prices 
-- and total of all their prices for each genre

select title, price, sum(price) over (ORDER by type)
from titles

select title, price, sum(price) over (PARTITION by type)
from titles

select title, price, sum(price) 
from titles
GROUP by price, title

--show all titles, and their prices 
-- and running total of all the books prices

select title, price, sum(price) over (order by title_id)
from titles

select title_id, title, type, price
from titles
where notes is not null