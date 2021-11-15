create table Question (
	QuestionID int not null primary key,
	QuestionText varchar(500) not null,
	QuizID int not null foreign key references Quiz(QuizID)
);