-- 1. The only column that should allow a null value is YearDied 
-- 2. Varchar columns should not allow blanks 
-- 3. All int columns must be greater than zero


use RecordKeeperDB
go
drop table if exists Invention
go
create table dbo.Invention(
	InventionId int not null identity primary key,
	InventionName varchar (200) not null constraint ck_invention_Invention_Name_cannot_be_blank check(InventionName <> ''),
	InventionDesc varchar (max) not null constraint ck_invention_Invention_Description_cannot_be_blank check(InventionDesc <> ''),
	YearInvented int not null constraint ck_invention_Year_Invented_cannot_be_negative check(YearInvented > 0),
	InventorFirstName varchar (100) not null constraint ck_invention_Inventor_First_Name_cannot_be_blank check(InventorFirstName <> ''),
	InventorLastName varchar (100) not null constraint ck_invention_Inventor_Last_Name_cannot_be_blank check(InventorlastName <> ''),
	Country varchar (50) not null constraint ck_invention_Country_cannot_be_blank check(Country <> ''),
	YearBorn int not null constraint ck_invention_Year_Born_cannot_be_negative check(YearBorn > 0),
	YearDied int constraint ck_invention_Year_Died_cannot_be_negative check(YearDied > 0),
	constraint u_invention_invention_name_and_year_invented unique(InventionName,YearInvented),	
	CONSTRAINT ck_inventors_must_be_at_least_10_years_old check(YearInvented-YearBorn >= 10),
	CONSTRAINT ck_year_invented_must_be_between_year_born_and_year_died check(YearInvented between YearBorn and YearDied),
	)
go
