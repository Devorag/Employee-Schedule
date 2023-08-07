use RecordKeeperDB
go
drop table if exists Invention
go
create table dbo.Invention(
	InventionId int not null identity primary key,
	InventionName varchar (200),
	InventionDesc varchar (max),
	YearInvented int,
	InventorFirstName varchar (100),
	InventorLastName varchar (100),
	Country varchar (50),
	YearBorn int,
	YearDied int 
	)
go

drop table if exists WorldRecord
go
create table dbo.WorldRecord(
	WorldRecordId int not null identity primary key,
	Category varchar (100),
	RecordName varchar (200),
	RecordDesc varchar (max),
	FullName varchar (100),
	Amount decimal, 
	UnitOfMeasure varchar (100),
	YearAchieved int,
	Country varchar (50)
	)
go

drop table if exists Medalist
go
create table dbo.Medalist(
	MedalistId int not null identity primary key,
	OlympicYear int,
	Season varchar (50),
	OlympicLocation varchar (100),
	Sport varchar (100),
	SportSubcategory varchar (100),
	Medal varchar (6),
	FirstName varchar (50),
	LastName varchar (50),
	Country varchar (50),
	YearBorn int
)
go

