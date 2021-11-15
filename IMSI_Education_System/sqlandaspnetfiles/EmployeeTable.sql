create table Employee (
	EmployeeID int not null primary key,
	FirstName varchar(200) not null,
	LastName varchar(225) not null,
	DeptID int foreign key references Department(DeptID),
	ManagerID int foreign key references Manager(ManagerID),
	Password varchar(200) not null
);