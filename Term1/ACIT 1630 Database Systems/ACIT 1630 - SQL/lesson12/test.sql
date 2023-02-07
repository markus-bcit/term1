CREATE VIEW oaklanders
AS
SELECT a.au_fname,
a.au_lname,
t.title
FROM authors a INNER JOIN titleauthor ta
ON a.au_id = ta.au_id INNER JOIN titles t
ON ta.title_id = t.title_id
WHERE a.city = 'Oakland'

SELECT *
FROM oaklanders
ORDER BY au_lname

drop view oaklanders

CREATE INDEX aulnameind
ON authors( au_lname )
CREATE UNIQUE CLUSTERED INDEX auidind
ON authors( au_id )

create table doctors
(DoctorID int primary key,
DoctorName varchar(20))
create table patients
(PatientID char(2) primary key,
PatientName varchar(20),
DoctorID int foreign key
references doctors)

insert into doctors values
(101, 'Michael'),
(102, 'Dianne'),
(103, 'Joey')
insert into patients values
('P1', 'Jane', 102),
('P2', 'Mary', 101),
('P3', 'Bob', 102)

-- Show Patients who have Dianne as their doctor

SELECT PatientID, PatientName
FROM Patients
JOIN Doctors ON Patients.DoctorID = Doctors.DoctorID
WHERE Doctors.DoctorName = 'Dianne'

--or 

SELECT PatientID, PatientName
FROM Patients, Doctors 
WHERE Patients.DoctorID = Doctors.DoctorID
and Doctors.DoctorName = 'Dianne'

-- SUBQUERY – UNCORRELATED
SELECT *
FROM Patients
WHERE DoctorID = (
    SELECT DoctorID 
    FROM Doctors 
    WHERE DoctorName = 'Dianne'
)

    SELECT DoctorID 
    FROM Doctors 
    WHERE DoctorName = 'Dianne'
-- or

SELECT PatientID, PatientName
FROM Patients
WHERE DoctorID = (
    SELECT PatientID, PatientName
    FROM Patients
    WHERE DoctorID = 102
)
--CORRELATED

SELECT PatientID, PatientName
FROM Patients
WHERE DoctorID = (
    SELECT DoctorID
    FROM Doctors
    WHERE Doctors.DoctorID = Patients.DoctorID
    AND DoctorName = 'Dianne'
)
-------- 
-- REDUNDANT
--------
SELECT PatientID, PatientName
FROM Patients
WHERE EXISTS (
    SELECT DoctorID
    FROM Doctors
    WHERE Doctors.DoctorID = Patients.DoctorID --
    AND DoctorName = 'Dianne'
)


SELECT pub_id, COUNT( pub_id )
FROM employee
GROUP BY pub_id

SELECT PROVINCE = 
CASE PROVINCE
WHEN 'BC'
THEN .12
WHEN 'AB'
THEN .08
WHEN 'ON'
THEN .07
ELSE 0
end
FROM SALES

select stor_name, stor_address, city, 
state = case state 
when 'CA' then 'California'
when 'WA' then 'Washington'
when 'OR' then 'Oregon'
else 'unknown'
end
from stores
