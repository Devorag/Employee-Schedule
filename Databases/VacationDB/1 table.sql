use vacationDB
go 
drop table if exists Transportation
drop table if exists Attraction
drop table if exists Vacation
drop table if exists Person 
go
/*
1) Add a table to VacationDB with options for Transportation Method. The available methods are Plane, Car, Bus and Boat.
2) Add a column to allow a Vacation to record a Transportation Method. 
    One transportation method per vacation
    This data is optional, because for a local vacation there may not be a transportation method.
3) Populate with system and sample data. Leave one method unused
*/
create table dbo.transportation(
    TransportationId int not null IDENTITY primary key, 
    TransportationDesc varchar(20) not null
    constraint u_transportation_Desc unique 
    CONSTRAINT ck_transportation_desc_not_blank CHECK(TransportationDesc <> '') 
)
go
create table dbo.Person(
    PersonId int not null identity primary key, 
    LastName varchar(35) not null constraint u_person_lastname unique 
)
go 
create table dbo.Vacation(
    VacationId int not null  IDENTITY PRIMARY key,
    TransportationId int null CONSTRAINT f_transportation_vacation foreign key REFERENCES transportation(TransportationId),
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