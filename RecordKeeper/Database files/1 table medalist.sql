-- SM Excellent! 100%

 --The year born must be before olympic year.
     -- The first olympic games happened in 1896. No data is allowed to be inserted before that.
     -- No null data is allowed.
  --    Columns should not allow blank data, zeros or negative numbers to be inserted. 
    --  Medalists must be at least 14 years old in order to compete in olympic games.
    --  Each olympic year and season can only have one of each medal for each sport and it's sport subcategory.

use recordkeeperDB
go
drop table if exists Medalist
go
create table dbo.Medalist(
	MedalistId int not null identity primary key,
	OlympicYear int not null constraint ck_medalist_olympic_year_cannot_be_before_1896 check (OlympicYear >= 1896),
	Season varchar (50) not null
	constraint ck_medalist_season_cannot_be_blank check(season <> ''),
	OlympicLocation varchar (100) not null
	constraint ck_medalist_olympic_location_cannot_be_blank check(OlympicLocation <> ''),
	Sport varchar (100) not null
	constraint ck_medalist_sport_cannot_be_blank check(sport <> ''),
	SportSubcategory varchar (100) not null
	constraint ck_medalist_sport_sub_category_cannot_be_blank check(SportSubcategory <> ''),
	Medal varchar (6) not null
	constraint ck_medalist_medal_cannot_be_blank check(medal <> ''),
	FirstName varchar (50) not null
	constraint ck_medalist_first_name_cannot_be_blank check(FirstName <> ''),
	LastName varchar (50) not null
	constraint ck_medalist_last_name_cannot_be_blank check(LastName <> ''),
	Country varchar (50) not null
	constraint ck_medalist_country_cannot_be_blank check(country <> ''),
	YearBorn int not null constraint ck_medalist_year_born_must_be_greater_than_zero check(YearBorn > 0),
	CONSTRAINT ck_medalist_must_be_at_least_14_years_old check(OlympicYear -yearborn >= 14),
	CONSTRAINT u_medalist_olympic_year_and_season_and_medal_sport_and_sport_sub_category UNIQUE(OlympicYear,season,medal,sport,SportSubcategory)

)
go
alter table medalist drop column if exists AgeAtTimeOfMedal 
GO
alter table medalist add AgeAtTimeOfMedal as olympicyear - YearBorn PERSISTED
GO
alter table medalist drop column if exists ShortSummaryMedalistInfo
GO
alter table medalist add ShortSummaryMedalistInfo as concat(medal, ' - ', substring(firstname,1,1), '.', SUBSTRING(lastname,1,1), '.: ', olympicyear)
GO
alter table medalist drop column if exists GoldMedal
go
alter table medalist add GoldMedal as 
      case
            when medal ='gold' then 1
            else 0
      end 
 PERSISTED
alter table medalist drop CONSTRAINT if exists d_medalist_AddressMedalist
go
alter table medalist drop column if exists AddressMedalist
go
alter table medalist add AddressMedalist varchar(1000) not null CONSTRAINT d_medalist_AddressMedalist DEFAULT ''
go
