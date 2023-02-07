create database q1
go

use q1
go


create table Departments
(
	Dept_No		char(10) primary key, 
	Dept_Name	char(20),
	Budget		money
)

create table Employees 
(
	SSN		char(10) primary key,
	Salary		money,
	Phone		char(10)
)

create table WorkORManage
(
	SSN		char(10)
		foreign key references Employees,
	Dept_No		char(10)
		foreign key references Employees,
	Role		char(10),
	Start_Date	date,
	primary key (SSN, Dept_No)
)

create table ChildrenEmployees
(
	Name	char(10),
	SSN		char(10)
		foreign key references Employees,
	Age		char(2),
	primary key (SSN, Name)
)
