begin TRANSACTION

select * from authors

update authors
set au_fname = 'Rob'
where au_id = '238-95-7766'

ROLLBACK

create view CAauthors
as
    select * from authors
        where state = 'CA'

create view CAOaklandauthors
AS
select * from CAauthors
    where city = 'Oakland'

select * from CAOaklandauthors

update CAOaklandauthors 
set au_fname = 'Joan'
where au_id = '213-46-8915'

select * from authors