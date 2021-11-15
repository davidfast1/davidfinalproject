create table AuditLog (
	LogID int not null primary key,
	LogDate date not null,
	AuditorID int not null foreign key references GovAuditor(AuditorID),
	Conclusion varchar(300) not null
);