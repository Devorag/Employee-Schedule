use RecordKeeperDB
go
drop table if exists PresidentMedal
drop table if exists Medal
drop table if exists ExecutiveOrder
drop table if exists President
drop table if exists Party
drop table if exists Color
go
create table dbo.Color(
      ColorId int not null identity primary key,
      ColorName varchar(20) not null 
            constraint u_Color_ColorName unique
            constraint ck_Color_color_name_cannot_be_blank check(ColorName > '')
)
go
go
create table dbo.Party(
	PartyId int not null identity primary key,
	PartyName varchar(35) not null 
        constraint u_Party_PartyName unique,
        constraint ck_party_partyname_cannot_be_blank check(PartyName <> ''),
	YearStart smallint not null constraint ck_party_year_start_must_be_after_1789_and_cannot_be_in_future check(YearStart between 1789 and year(getdate())),
	ColorId int null constraint f_Color_Party foreign key references Color(ColorId)

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

create table dbo.Medal(
      MedalId int not null identity primary key,
      MedalName varchar(100) not null 
            constraint u_Medal_Name unique
            constraint ck_Medal_Name_cannot_be_blank check(MedalName > '')
)
go

create table dbo.PresidentMedal(
      PresidentMedalId int not null identity primary key,
      PresidentId int not null constraint f_President_PresidentMedal foreign key references President(PresidentId),
      MedalId int not null constraint f_Medal_PresidentMedal foreign key references Medal(MedalId),
      TimeRecieved datetime not null default getdate() constraint ck_PresidentMedal_time_recieved_cannot_be_in_future check(TimeRecieved <= getdate()),
      constraint u_PresidentMedal_PresidentId_MedalId unique(PresidentId, MedalId)
)
go
