use lesson03
go

create table Employment
(
	EmpNo		char(10)
		foreign key references Employees,
	DeptNo		char(10)
		foreign key references Departments,
	Role		char(15),
	Salary		money,
	ProjectNo	char(10),
	ContractType char(20),
	StartDate	date,
	EndDate		date, 
	primary key (EmpNo, DeptNo)
)
