select * from authors 

begin TRANSACTION

update authors 
set au_fname = 'Ben'
where au_id = '172-32-1176'

UPDATE authors
SET au_fname = 'Lisa'
WHERE au_id = '213-46-8915'

COMMIT

Select concat(authors.au_lname, ', ', authors.au_fname) as 'name',
city, state, titles.title, titles.type
from authors
left outer join titleauthor on authors.au_id = titleauthor.au_id
left OUTER JOIN titles on titleauthor.title_id = titles.title_id
where (state in ('CA', 'TN'))
order by name

Select concat(authors.au_lname, ', ', authors.au_fname) as 'name',
city, state, titles.title, titles.type
from authors
join titleauthor on authors.au_id = titleauthor.au_id
JOIN titles on titleauthor.title_id = titles.title_id
where (state in ('CA', 'TN'))
order by name

Select concat(authors.au_lname, ', ', authors.au_fname) as 'name',
city, state, titles.title, titles.type
from authors
inner join titleauthor on authors.au_id = titleauthor.au_id
inner JOIN titles on titleauthor.title_id = titles.title_id
where (state in ('CA', 'TN'))
order by name

Select concat(authors.au_lname, ', ', authors.au_fname) as 'name',
city, state, titles.title, titles.type
from authors
right outer join titleauthor on authors.au_id = titleauthor.au_id
right OUTER JOIN titles on titleauthor.title_id = titles.title_id
where (state in ('CA', 'TN'))
order by name
-------------------------

SELECT type, pub_name, SUM(qty), MIN(price)
FROM titles
JOIN publishers ON titles.pub_id = publishers.pub_id
JOIN sales ON titles.title_id = sales.title_id
GROUP BY type, pub_name

SELECT type, pub_name, SUM(qty), MIN(price)
FROM titles
inner JOIN publishers ON titles.pub_id = publishers.pub_id
inner JOIN sales ON titles.title_id = sales.title_id
GROUP BY type, pub_name