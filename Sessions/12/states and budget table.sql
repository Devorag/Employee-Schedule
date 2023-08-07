use RecordKeeperDB
go
drop table if exists states
go
create table dbo.states(
	StateId int not null identity primary key,
	StateName varchar(25) not null unique,
	StateCode char(2) not null default '' unique,
	PopValue int not null,
	RepublicanVotes int not null,
	DemocratVotes int not null,
	Admitted datetime2 not null
)
go


drop table if exists budget
go
create table dbo.budget(
	BudgetId int not null identity primary key,
	Department varchar(500) not null,
	BudgetYear int not null,
	Millions int not null,
	constraint uc_dept_year_must_be_unique unique(Department, BudgetYear)
)
go
