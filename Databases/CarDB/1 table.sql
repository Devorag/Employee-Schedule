use Cardb 
go 
drop table if exists AutoClass
drop table if exists Trip
drop table if exists Car 
drop table if exists Person 
go 
create table dbo.AutoClass(
    AutoClassId int not null IDENTITY primary key,
    AutoClassName varchar(25) not null constraint u_auto_class_autoclass_name unique
)
go
create table dbo.person(
    PersonId int not null identity primary key, 
    LastName varchar(35) not null constraint u_person_last_name unique 
)
create table dbo.car(
    CarId int not null identity primary key, 
    AutoClassId int null CONSTRAINT f_autoclass_Car foreign key REFERENCES autoclass(AutoClassId),
    PersonId int not null constraint f_person_car foreign key REFERENCES person(PersonId),
    Make varchar(25),
    Model varchar(25),
    MakeYear int,
    Price decimal(10,2),
    Used BIT
    constraint u_Car_make_make_year unique(Make, MakeYear)
)
go 
create table dbo.trip(
    TripId int not null identity primary key, 
    CarId int not null CONSTRAINT f_car_trip foreign key references car(CarId),
    Destination varchar(200) not null, 
    StartDate  date not null, 
    EndDate date not null, 
    MilesTraveled int not null
)
go


insert person(lastname)
select 'Smith'
union select 'Jones'
union select 'Franklyn'


insert car(PersonId, Make, Model, MakeYear, Price, Used)
select p.personId, 'Toyota', 'Camry', 2019, 20000, 0 from person p where p.lastname = 'Smith'
union select p.personId, 'Ford', 'Mustang', 2020, 35000, 0 from person p where p.LastName = 'Smith'
union select p.personId, 'Honda', 'Accord', 2016, 40000, 1  from person p where p.lastname = 'Smith'
union select p.personId, 'Jeep', 'Wrangler', 2016, 40000, 0 from person p where p.lastname = 'Jones'
union SELECT p.personId, 'Honda', 'Odyssey', 2015, 25000, 1 from person p where p.lastname = 'Jones'
union select p.personId, 'Pontiac', 'Lesabre',1980, 100, 1 from person p where p.lastname = 'Franklyn'
union select p.personId, 'Olds Mobile', 'Sedan', 1966, 12345678.91, 1 from person p where p.lastname = 'Franklyn'
union SELECT p.personId, 'Olds Moblie', 'Sedan', 1965, 12345678.91, 1 from person p where p.lastname = 'Smith'

insert trip(CarId, Destination, StartDate, EndDate, MilesTraveled)
select
    case 
    when s.statecode like 'A%' then (select c.CarId from car c where c.Make = 'Honda' and c.makeyear = 2016)
    when s.statecode like 'N%' then (select c.CarId from car c where c.Make = 'Jeep' and c.makeyear = 2016)
    else (select c.CarId from car c where c.make = 'Pontiac' and c.MakeYear = 1980)
    end,
    s.statename, 
    case when s.StateCode like 'A%' then '01/01/1970' when s.statecode like 'N%' then '03/01/1970' else '06/01/1970' end,
    case when s.StateCode like 'A%' then '01/02/1970' when s.statecode like 'N%' then '03/01/1972' else '06/01/1973' end,
    case when s.StateCode like 'C%' then 100 when s.statecode like 'W%' then 200 else 300 end
from RecordKeeperDB.dbo.states s 

--select * from person 
--select * from car 
select * from trip 