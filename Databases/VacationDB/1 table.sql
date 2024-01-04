use vacationDB
go 
drop table if exists Attraction
drop table if exists Vacation
drop table if exists Person 
go

create table dbo.Person(
    PersonId int not null identity primary key, 
    LastName varchar(35) not null constraint u_person_lastname unique 
)
go 
create table dbo.Vacation(
    VacationId int not null  IDENTITY PRIMARY key,
    PersonId int not null CONSTRAINT f_person_Vacation foreign key REFERENCES person(PersonId),
    Place varchar(100) not null,
    StartDate date not null,
    EndDate date not null
)
go
CREATE table dbo.Attraction(
    AttractionId int not null identity primary key,
    VacationId int not null CONSTRAINT f_vacation_attraction FOREIGN key REFERENCES vacation(VacationId),
    AttractionName varchar(30) not null, 
    AmountSpent decimal(7,2) not null
)
go 