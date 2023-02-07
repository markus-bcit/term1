begin TRANSACTION

select * from authors

update authors
set au_fname = 'Mary'
where au_id = '213-46-8915'