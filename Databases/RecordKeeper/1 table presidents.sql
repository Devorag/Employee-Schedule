-- SM Excellent! 100% See comments, no need to resubmit.

/*President
    The U.S Government used the data in the presidents table to provide the captions for new monuments engraved into the side of a mountain in NY.
    There was bad data in the table, some term ends and term starts were reversed. 
    So the caption engraved in the mountain says something like Served: 1900 to 1886. This was discovered on opening day by some of the audience.
    It is going to cost 1.4 million dollars to correct that error engraved into the mountain.
    Ensure all bad data possibilities are prevented.
    They have specified a few rules:
        No president's term can begin before 1776 when America became a country
        Term end cannot be before term start.
        A president must be at least 35 years old.
*/
--•Republican, 1854, Red •Democrat, 1828, Blue•Federalist, 1791, Orange•Whig, 1833, Yellow •None,Federalist, 1789, White•National Union, 1864, Green•Democratic-Republican, 1792, purple


use RecordKeeperDB
drop table if exists president
drop table if exists party
go
create table dbo.party(
	PartyId int not null identity primary key,
	PartyName varchar(50) not null constraint u_party_name unique
	constraint ck_party_name_cannot_be_blank check(PartyName <> ''),
	--AF A better constraint on year would be to check that the year is valid (greater than 1776, not a future date)
	YearBegan int not null
	CONSTRAINT ck_party_year_began_cannot_be_blank CHECK(YearBegan <> ''),
	Color varchar(30) not null CONSTRAINT u_party_color unique 
	CONSTRAINT ck_party_color_Cannot_be_blank CHECK(Color <> '')
)
go 

		create table dbo.president(
		PresidentId int not null identity (1000,1) primary key,
		PartyId int not null constraint f_party_president foreign key REFERENCES party(PartyId),
		Num int not null CONSTRAINT u_president_Num unique
		constraint ck_president_num_must_be_greater_than_zero check(num > 0), 
		FirstName varchar(100) not null
		constraint ck_president_first_name_cannot_be_blank CHECK(FirstName <> ''), 
		LastName varchar(100) not null
		CONSTRAINT ck_president_last_name_cannot_be_blank check(LastName <> ''), 
-- SM Don't allow future date.
		DateBorn date not null,
		DateDied DATETIME2 constraint ck_president_date_died_cannot_be_future_date check(GETDATE() >= DateDied),
		TermStart int not null constraint ck_president_term_Start_cannot_Be_Before_1776 check(TermStart >= 1776),
		TermEnd int,
-- SM One minor thing, you still allow TermEnd to be null even if DateDied is not null.
		CONSTRAINT ck_president_term_end_Cannot_be_before_term_start CHECK(TermEnd >= TermStart),
		constraint ck_president_must_be_at_least_35_years_old check(TermStart - year(dateborn) >= 35),
		CONSTRAINT ck_president_president_must_be_alive_during_full_term CHECK(year(DateDied) >= TermEnd),
	)  
go
alter table president drop column if exists AgeAtDeath
go
alter table president add AgeAtDeath as  DATEDIFF (year, DateBorn, DateDied) PERSISTED 
go
alter table president drop column if exists YearsServed 
go
alter table president add YearsServed as termend - termstart PERSISTED 
go
alter table president drop column if EXISTS NumberOfFullTermsServed
go
alter table president add NumberOfFullTermsServed as (termend - termstart) / 4 PERSISTED
go

--SELECT NumberOfFullTermsServed = (p.termend - p.termstart) / 4
--from president p
