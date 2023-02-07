-- create table group1 (name varchar(10),
-- instrument varchar(10));
-- create table group2 (name varchar(10),
-- instrument varchar(10));

-- insert into group1 values ('john', 'piano');
-- insert into group1 values ('mary', 'oboe');
-- insert into group2 values ('mike', 'violin');
-- insert into group2 values ('lisa', 'piano');
-- insert into group2 values ('joe', 'oboe');

select * from group1
select a.name, a.instrument,
b.name, b.instrument
from group2 a cross join group2 b
where a.name <> b.name
