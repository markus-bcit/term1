select au_lname, au_fname, City 
    from authors
    order by city DESC, au_lname
    -- orders alphebeticaly 



select Name = au_lname + ' ' + au_fname, City 
from authors
order by city DESC, au_lname

-- or

select au_lname + ' ' + au_fname as Name, City 
from authors
order by city DESC, au_lname

-- OR

select concat(au_lname, ' ' , au_fname) as Name, City 
from authors
order by city DESC, au_lname


select title, ytd_sales
    from titles

-- adds 5 to year ytd_sales

select title, ytd_sales + '5' 
    from titles

-- appends 5 to end of ytd_sales

select title, concat(ytd_sales, 5)
    from titles

select title, ytd_sales, ytd_sales + '5' as 'New_sales',
    concat(ytd_sales, 5)
    from titles 
    where ytd_sales + '5' < 1000
    order by 'New_Sales'

-- authors with lname= marjorie fname = green or city Oakland

select concat(au_lname, ' ', au_fname) as Name, city
    from authors
    where (city = 'Oakland'
    or au_fname = 'Marjorie'
    and au_lname = 'Green')

-- only authors with city = 'Oakland' au_fname = 'Marjorie' au_lname = 'Green'

select concat(au_lname, ' ', au_fname) as Name, city
    from authors
    where (city = 'Oakland'
    or au_fname = 'Marjorie')
    and au_lname = 'Green'

-- title and pubdate

select title, pubdate
    from titles

-- title and pudate + 5 
-- DO NOT USE IS BAD

select title, pubdate + 5
    from titles

-- title and, pubdate date + 5 weeks
select title, pubdate, dateadd(week, 5, pubdate) as 'New_DATE'
    from titles

-- title, char_date as str, pubdate + 5 weeks

select title, convert(varchar(12), pubdate, 109) as 'CHAR_DATE',
    dateadd(week, 5, pubdate)
    from titles

select title, convert(varchar(12), pubdate, 105),
    format(dateadd(week, 5  , pubdate), 'MM:dd:::yyyy')
    from titles
