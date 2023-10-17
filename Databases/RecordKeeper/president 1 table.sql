-- paste this on the bottom of the table file
use RecordKeeperDB
drop table if exists president
go
		create table dbo.president(
		PresidentId int not null identity (1000,1) primary key,
		Num int not null, 
		FirstName varchar(100) not null, 
		LastName varchar(100) not null, 
        Party varchar(50) not null,
		DateBorn date not null,
		DateDied datetime2,
		TermStart int not null,
		TermEnd int
	)
go




