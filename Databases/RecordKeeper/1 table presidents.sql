-- SM Excellent! 100%
use RecordKeeperDB
drop table if exists PresidentMedal
drop table if exists Medal 
drop table if exists orders
drop table if exists president
drop table if exists party
drop table if exists Colors
go

create table dbo.colors(
	ColorId int not null identity primary key, 
	Color varchar(50) not null constraint u_colors_color unique 
	CONSTRAINT ck_colors_color_cannot_be_blank check(color <> '')
)

create table dbo.party(
	PartyId int not null identity primary key,
	ColorId int null CONSTRAINT f_colors_party foreign key references colors(ColorId), 
	PartyName varchar(50) not null constraint u_party_name unique
	constraint ck_party_name_cannot_be_blank check(PartyName <> ''),
	YearBegan int not null
	CONSTRAINT ck_party_year_began_must_be_after_1776_and_before_current_Date CHECK(YearBegan between 1776 and year(GETDATE())),
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
		DateBorn date not null, 
		constraint ck_date_born_cannot_be_future_Date CHECK(dateborn < GETDATE()),
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
alter table president add AgeAtTermStart as termstart - year(dateborn) persisted

create table dbo.orders(
	OrderId int not null identity primary key, 
	PresidentId int not null constraint f_president_orders foreign key references president(presidentId),
	OrderNumber int not null CONSTRAINT u_orders_order_number UNIQUE
	constraint cl_orders_order_number_must_be_greater_than_zero check(OrderNumber > 0),
	VolumeNumber int not null constraint ck_orders_volume_number_must_be_3 check(VolumeNumber = 3),
	CodeName CHAR(6) not null CONSTRAINT ck_orders_code_name_must_be_C_F_R CHECK(CodeName = 'C.F.R.'),
	PageNumber int not null
	constraint ck_orders_page_number_must_be_greater_than_zero check(PageNumber > 0),
-- SM Should be before the current "year".
	YearIssued int not null CONSTRAINT ck_orders_year_issued_after_1776_and_before_current_year check(YearIssued between 1776 and GETDATE()),
	OrderName varchar(200) not null CONSTRAINT ck_orders_order_name_cannot_be_blank CHECK(OrderName <> ''),
	OrderUpheld bit not null,
	DateRecorded DATETIME not null  DEFAULT GETDATE(),
)
-- SM Computed columns can be added in table using ColumnName as...
alter table orders add OfficialFormat as concat('Exec. Order No.', ' ', OrderNumber, ' ', VolumeNumber, ' ', CodeName, ' ', PageNumber, ' ', yearissued, '. ', OrderName ) persisted 

go 
create table dbo.medal(
    MedalId int not null identity primary key, 
    MedalName varchar(200) not null constraint u_medal_medalname unique 
	constraint ck_medal_medalname_cannot_be_blank check(medalname <> '')
)
go 

create table dbo.PresidentMedal(
    PresidentMedalId int not null identity primary key, 
    PresidentId int not null constraint f_president_presidentmedal foreign key REFERENCES president(PresidentId),
    MedalId int not null constraint f_medal_presidentmedal foreign key references medal(MedalId),
    DateAwarded datetime not null default getdate() 
	constraint u_presidentId_medalId UNIQUE(presidentId, MedalId)
)
go