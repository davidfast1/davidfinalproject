create table Answer (
	AnswerID int not null primary key,
	AnswerText varchar(500) not null,
	QuestionID int not null foreign key references Question(QuestionID),
	IsTrue bit not null
);