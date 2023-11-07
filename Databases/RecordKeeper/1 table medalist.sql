-- SM Excellent! See comments, fix and resubmit.

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
-- SM Why did you comment out the constraint that you need. Remove the > 0 constraint.
	OlympicYear int not null --constraint ck_medalist_olympic_year_cannot_be_before_1896 check (OlympicYear >= 1896),
	constraint ck_medalist_olympic_year_must_be_greater_than_zero check(OlympicYear > 0),
-- SM remove the comma between column and constraint.
	Season varchar (50) not null,
	constraint ck_medalist_season_cannot_be_blank check(season <> ''),
	OlympicLocation varchar (100) not null,
	constraint ck_medalist_olympic_location_cannot_be_blank check(OlympicLocation <> ''),
	Sport varchar (100) not null,
	constraint ck_medalist_sport_cannot_be_blank check(sport <> ''),
	SportSubcategory varchar (100) not null,
	constraint ck_medalist_sport_sub_category_cannot_be_blank check(SportSubcategory <> ''),
	Medal varchar (6) not null,
	constraint ck_medalist_medal_cannot_be_blank check(medal <> ''),
	FirstName varchar (50) not null,
	constraint ck_medalist_first_name_cannot_be_blank check(FirstName <> ''),
	LastName varchar (50) not null,
	constraint ck_medalist_last_name_cannot_be_blank check(LastName <> ''),
	Country varchar (50) not null,
	constraint ck_medalist_country_cannot_be_blank check(country <> ''),
	YearBorn int not null,
-- SM No need for this constraint, it's enforced by check(OlympicYear -yearborn >= 14)
	CONSTRAINT ck_medalist_year_born_must_be_before_olympic_year CHECK(YearBorn < OlympicYear),
-- SM This should be a constrint on the column.
	constraint ck_medalist_year_born_must_be_greater_than_zero check(YearBorn > 0),
	CONSTRAINT ck_medalist_must_be_at_least_14_years_old check(OlympicYear -yearborn >= 14),
	CONSTRAINT u_medalist_olympic_year_and_season_and_medal_sport_and_sport_sub_category UNIQUE(OlympicYear,season,medal,sport,SportSubcategory)

)
go
