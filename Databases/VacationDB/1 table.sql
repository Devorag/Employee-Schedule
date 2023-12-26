use vacationDB
go 
drop table if exists vacation
drop table if exists person 
go 
create table dbo.person(
    PersonId int not null identity primary key,
    LastName varchar(50) not null constraint u_last_name unique
)
go 
create table dbo.vacation(
    VacationId int not null IDENTITY PRIMARY key,
    PersonId int not null CONSTRAINT f_person_Vacation foreign key REFERENCES person(PersonId),
    Place varchar(100) not null,
    StartDate date not null,
    EndDate date not null
)
go