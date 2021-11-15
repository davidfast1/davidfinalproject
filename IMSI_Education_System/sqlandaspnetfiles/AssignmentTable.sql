create table Assignment (
	EmployeeID int not null foreign key references Employee(EmployeeID),
	QuizID int not null foreign key references Quiz(QuizID),
	Completion date,
	ManagerConfirm date
);