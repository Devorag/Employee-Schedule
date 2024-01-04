
use RecordKeeperDB
drop table if exists orders
drop table if exists president
drop table if exists party
go
<<<<<<< HEAD

--AF Constraints should be added to these columns to ensure valid data
=======
>>>>>>> 1cb5801b4c851aa836c0c4aacb2d4159d86accbf
create table dbo.party(
	PartyId int not null identity primary key,
	PartyName varchar(50) not null constraint u_party_name unique
	constraint ck_party_name_cannot_be_blank check(PartyName <> ''),
	--AF A better constraint on year would be to check that the year is valid (greater than 1776, not a future date)
	YearBegan int not null
	CONSTRAINT ck_party_year_began_cannot_be_blank CHECK(YearBegan <> ''),
	Color varchar(30) not null CONSTRAINT u_party_color unique 
	CONSTRAINT ck_party_color_Cannot_be_blank CHECK(Color <> ''),
	constraint ck_party_year_began_cannot_be_futue_date check(YearBegan < GETDATE())
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
		CONSTRAINT u_president_date_born UNIQUE(dateborn)
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


create table dbo.orders(
	OrderId int not null identity primary key, 
	PresidentId int not null constraint f_president_orders foreign key references president(presidentId),
	OrderNumber int not null CONSTRAINT u_orders_order_number UNIQUE,
	VolumeNumber int not null constraint ck_orders_volume_number_must_be_3 check(VolumeNumber = 3),
	CodeName VARCHAR(10) not null CONSTRAINT ck_orders_code_name_must_be_C_F_R CHECK(CodeName = 'C.F.R.'),
	PageNumber int not null CONSTRAINT ck_orders_page_number_cannot_be_blank CHECK(PageNumber <> ''),
	YearIssued int not null CONSTRAINT ck_orders_year_issued_cannot_be_blank CHECK(YearIssued <> ''),
	OrderName varchar(200) not null CONSTRAINT ck_orders_order_name_cannot_be_blank CHECK(OrderName <> ''),
	OrderUpheld bit,
	DateRecorded DATETIME not null  DEFAULT GETDATE(),
)

