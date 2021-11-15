create table Manager (
	ManagerID int not null primary key,
	FirstName varchar(200) not null,
	LastName varchar(225) not null,
	DeptID int foreign key references Department(DeptID),
	Password varchar(200) not null
);