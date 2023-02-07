use lesson03 
go

create table Departments
(
	DeptNo		char(10) primary key,
	DeptName	char(20),
	Budget		money
)

create table Employees
(
	EmpNo		char(10) primary key,
	LastName	char(20),
	FirstName	char(25),
	eMail		char(40)
)
