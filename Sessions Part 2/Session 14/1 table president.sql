use RecordKeeperDB
go
drop table if exists ExecutiveOrder
drop table if exists PresidentMedal
drop table if exists MedalPresident
drop table if exists Medal
drop table if exists President
drop table if exists Party
drop table if exists Color
go

create table dbo.Party(
	PartyId int not null identity primary key,
	PartyName varchar(35) not null 
        constraint u_Party_PartyName unique,
        constraint ck_party_partyname_cannot_be_blank check(PartyName <> ''),
	YearStart smallint not null constraint ck_party_year_start_must_be_after_1789_and_cannot_be_in_future check(YearStart between 1789 and year(getdate())),
	PartyColor varchar(20) not null constraint ck_party_partycolor_cannot_be_blank check(PartyColor <> ''),
)
go

create table dbo.President(
		PresidentId int not null identity (1000,1) primary key,
		PartyId int not null constraint f_Party_President foreign key references Party(PartyId),
		Num int not null 
			constraint u_President_Num unique
			constraint ck_President_Num_cannot_be_negative check (Num > 0),
		FirstName varchar(100) not null constraint ck_President_FirstName_cannot_be_blank check (FirstName <> ''), 
		LastName varchar(100) not null constraint ck_President_LastName_cannot_be_blank check (LastName <> ''),
		DateBorn date not null,
		DateDied datetime2,
		TermStart int not null constraint ck_President_TermStart_must_be_after_1776 check (TermStart >= 1776),
		TermEnd int,
		constraint ck_TermEnd_cannot_be_before_TermStart check (TermEnd >= TermStart),
		constraint ck_a_president_must_be_at_least_35_years_old check (termstart - year(DateBorn) >= 35)  
	)
go

create table dbo.ExecutiveOrder(
	ExecutiveOrderId int not null identity primary key,
	PresidentId int not null constraint f_ExecutiveOrder_President foreign key references President(PresidentId),
	OrderNumber int not null 
        constraint u_ExecutiveOrder_OrderNumber unique,
        constraint ck_ExecutiveOrder_OrderNumber_must_be_greater_than_0 check(OrderNumber > 0),
	PageNum int not null constraint ck_ExecutiveOrder_PageNum_must_be_greater_than_0 check(PageNum > 0),
	YearIssued int not null
        constraint ck_ExecutiveOrder_year_issued_between_1776_and_today check(YearIssued between 1776 and year(getdate())),
        constraint ck_ExecutiveOrder_YearIssued_cannot_be_in_the_future check(YearIssued <= datepart(year,getdate())),
	OrderName varchar(1000) not null constraint ck_ExecutiveOrder_OrderName_cannot_be_blank check(OrderName <> ''),
	Reference as concat('Exec. Order No. ', OrderNumber, ', ', '3 C.F.R.', PageNum, ' ', YearIssued, '. ', OrderName) persisted,
	UpheldByCourt bit not null,
	DateInserted date not null default getdate()
)
go

