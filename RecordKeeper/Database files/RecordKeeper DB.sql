use master 
drop database if exists RecordKeeperDB
go
create database RecordKeeperDB
go
use RecordKeeperDB
go
drop table if exists Invention
go
create table dbo.Invention(
	InventionId int not null identity primary key,
	InventionName varchar (200) not null 
		constraint ck_Invention_InventionName_cannot_be_blank check(InventionName<> '') unique,
	InventionDesc varchar (max) not null 
		constraint ck_Invention_InventionDesc_cannot_be_blank check(InventionDesc<> ''),
	YearInvented int not null,
	InventorFirstName varchar (100) not null 
		constraint ck_Invention_InventorFirstName_cannot_be_blank check(InventorFirstName<> ''),
	InventorLastName varchar (100) not null 
		constraint ck_Invention_InventorLastName_cannot_be_blank check(InventorLastName<> ''),
	Country varchar (50) not null 
		constraint ck_Invention_Country_cannot_be_blank check(Country<> ''),
	YearBorn int not null,
	YearDied int,	
	Code as upper(concat(YearInvented,substring(InventorFirstName,1,1),substring(InventorLastName,1,1), substring((InventionName),1,2))) persisted
		constraint u_invention_code_must_be_unique unique,
		constraint c_invention_code_cannot_be_blank check (Code > '')
	)
go

drop table if exists WorldRecord
go
create table dbo.WorldRecord(
	WorldRecordId int not null identity primary key,
	Category varchar (100) not null
		 constraint ck_WorldRecord_Category_cannot_be_blank check(Category <> ''),
	RecordName varchar (200) not null  
		constraint ck_WorldRecord_RecordName_cannot_be_blank check(RecordName <> '')
		constraint u_WorldRecord_RecordName_must_be_unique unique,
	RecordDesc varchar (max) not null  
		constraint ck_WorldRecord_RecordDesc_cannot_be_blank check(RecordDesc<> ''),
	FullName varchar (100) not null
	    constraint ck_WorldRecord_FirstName_cannot_be_blank check(FullName <> ''),
	Amount decimal not null 
		constraint ck_WorldRecord_Amount_greater_than_0 check(Amount > 0), 
	UnitOfMeasure varchar (100) not null 
		constraint ck_WorldRecord_UnitofMeasure_cannot_be_blank check(UnitofMeasure<> ''),
	YearAchieved int not null,
	Country varchar (50) not null
		constraint ck_WorldRecord_Country_cannot_be_blank check(Country <> ''),
	Code as concat(substring(replace(RecordName,' ', ''),1,20),YearAchieved) persisted 
		constraint c_WorldRecord_code_cannot_be_blank check (Code > '')
		constraint u_WorldRecord_code_must_be_unique unique
	)
go
drop table if exists Medalist
go
create table dbo.Medalist(
	MedalistId int not null identity primary key,
	OlympicYear int not null,
	Season varchar (50) not null
		constraint c_medalist_season_cannot_be_blank check(Season > ''),
	OlympicLocation varchar (100) not null
		constraint c_medalist_location_cannot_be_blank check (OlympicLocation > ''),
	Sport varchar (100) not null
		constraint c_medalist_sport_cannot_be_blank check(Sport > ''),
	SportSubcategory varchar (100) not null
		constraint c_medalist_sport_subcategory_name_cannot_be_blank check(SportSubcategory > ''),
	Medal varchar (6) not null 
		constraint c_medalist_medal_cannot_be_blank check (Medal > ''),
	FirstName varchar (50) not null
		constraint c_medalist_first_name_cannot_be_blank check (FirstName > ''),
	LastName varchar (50) not null
		constraint c_medalist_last_name_cannot_be_blank check (LastName > ''),
	Country varchar (50) not null
		constraint c_medalist_country_cannot_be_blank check (Country > ''),
	YearBorn int not null,
	Code as concat(substring(upper(FirstName),1,3),substring(upper(LastName),1,2), substring(Medal,1,1), substring(Sport,1,1),OlympicYear) persisted
		constraint c_medalist_code_cannot_be_blank check (Code > '')
		constraint u_medalist_code_must_be_unique unique
)
go

