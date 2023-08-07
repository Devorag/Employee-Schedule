use recordkeeperdb
go

drop table if exists OlympicMedalist
drop table if exists OlympicSportSubCategory
drop table if exists Olympian
drop table if exists Olympics
drop table if exists City
drop table if exists Country
drop table if exists OlympicMedal
drop table if exists Season
drop table if exists SportSubCategory
drop table if exists Sport
go
create table dbo.Country(
	CountryId int not null identity primary key,
	CountryName varchar (100) constraint ck_Country_CountryName_cannot_be_blank check (CountryName <> '')
		constraint u_Country_CountryName unique(CountryName)

)
go
create table dbo.City(
	CityId int not null identity primary key,
	CountryId int not null constraint f_Country_City foreign key references Country(CountryId),
	CityName varchar (100) constraint ck_City_CityName_cannot_be_blank check (CityName <> '')
				constraint u_City_CityName unique(CountryId, CityName)
)
go
create table dbo.Season(
	SeasonId int not null identity primary key,
	SeasonName varchar (20) constraint ck_Season_SeasonName_cannot_be_blank check (SeasonName <> '')
		constraint u_Season_SeasonName unique(SeasonName)
)
go
create table dbo.OlympicMedal(
	OlympicMedalId int not null identity primary key,
	OlympicMedalName varchar (10) constraint u_OlympicMedal_OlympicMedalName unique(OlympicMedalName),
	OlympicMedalSequence int not null constraint u_One_sequence_per_OlympicMedal unique(OlympicMedalId,OlympicMedalSequence)
)
go 
create table dbo.Olympics(
	OlympicsId int not null identity primary key,
	SeasonId  int not null constraint f_Season_Olympics foreign key references Season(SeasonId),
	CityId  int not null constraint f_City_Olympics foreign key references City(CityId),
	OlympicYear int not null 
		constraint u_One_Olympics_per_Season_per_Year unique(OlympicsId, SeasonId, OlympicYear)
)
go 
create table dbo.Olympian(
	OlympianId int not null identity primary key,
	CountryId int not null constraint f_Country_Olympian foreign key references Country(CountryId),
	FirstName varchar (80) constraint ck_Olympian_FirstName_cannot_be_blank check (FirstName <> ''),
	LastName varchar (80) constraint ck_Olympian_LastName_cannot_be_blank check(LastName <> ''),
	YearBorn int not null
)
go 

create table dbo.Sport(
	SportId int not null identity primary key,
	SportName varchar (100) constraint ck_Sport_SportName_cannot_be_blank check(SportName <> '')
			constraint u_Sport_SportName unique(SportName)
)
go
create table dbo.SportSubCategory(
	SportSubCategoryId int not null identity primary key,
	SportId int not null constraint f_Sport_SportSubCategory foreign key references Sport(SportId),
	SportSubCategoryName varchar (100) constraint ck_SportSubCategory_SportSubCategoryName_cannot_be_blank check(SportSubCategoryName <> '')
			constraint u_Sport_SportSubCategoryName unique(SportId, SportSubCategoryName)
)
go
create table dbo.OlympicSportSubCategory(
	OlympicSportSubCategoryId int not null identity primary key,
	SportSubCategoryId int not null constraint f_SportSubCategory_OlympicSportSubCategory foreign key references SportSubCategory(SportSubCategoryId),
	OlympicsId  int not null constraint f_Olympics_OlympicSport foreign key references Olympics(OlympicsId),
		constraint u_Olympics_OlympicSportSubCategory unique(OlympicSportSubCategoryId, OlympicsId)

)
go
create table dbo.OlympicMedalist(
	OlympicMedalistId int not null identity primary key,
	OlympianId  int not null constraint f_Olympian_OlympicMedalist foreign key references Olympian(OlympianId),
	OlympicMedalId  int not null constraint f_OlympicMedal_OlympicMedalist foreign key references OlympicMedal(OlympicMedalId),
	OlympicSportSubCategoryId int not null constraint f_OlympicMedalist_OlympicSportSubCategory foreign key references OlympicSportSubCategory(OlympicSportSubCategoryId),
	constraint u_OlympicSportSubCategoryId_OlympianId_OlympicMedalId unique(OlympicSportSubCategoryId, OlympianId, OlympicMedalId)
)
go


