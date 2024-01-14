/*
Cars are participating in races! Add a Race table, just has race name (unique)
Populate with at least 3 races.
Add cars to races. A car has a unique numeric position in a race. Leave one race without cars.
Keep it simple no check constraints, just unique and foreign keys

Races
select 'Monaco Grand Prix'
union select 'Indianapolis 500'
union select 'Daytona 500'

Cars in Races
select RaceName = 'Monaco Grand Prix', Make = 'Olds Mobile', MakeYear = 1965, CarPosition = 1
union select 'Monaco Grand Prix', 'Pontiac', 1980, 2
union select 'Monaco Grand Prix', 'Jeep', 2016, 3
union select 'Monaco Grand Prix', 'Honda', 2015, 4
union select 'Indianapolis 500','Honda',2016,1
union select 'Indianapolis 500','Toyota',2019,2
union select 'Indianapolis 500', 'Jeep', 2016, 3

*/
use cardb 
go 
drop table if exists CarRace 
drop table if exists race 
go 
create table dbo.race(
    RaceId int not null identity primary key,
    RaceName varchar(100) not null constraint u_Race_Name unique
)

go
create table dbo.CarRace(
    CarRaceId int not null identity primary key,
    CarId int not null constraint f_Car_CarRace foreign key REFERENCES Car(CarId),
    RaceId int not null constraint f_Race_CarRace foreign key references Race(RaceId),
    CarPosition int not null,
    constraint u_CarRace_Car_Race unique(CarId, RaceId),
    constraint u_CarRace_Race_CarPosition unique(RaceId, CarPosition)
)
go 

insert Race(RaceName)s
select 'Monaco Grand Prix'
union select 'Indianapolis 500'
union select 'Daytona 500'

;
with x as(
    select RaceName = 'Monaco Grand Prix', Make = 'Olds Mobile', MakeYear = 1965, CarPosition = 1
    union select 'Monaco Grand Prix', 'Pontiac', 1980, 2
    union select 'Monaco Grand Prix', 'Jeep', 2016, 3
    union select 'Monaco Grand Prix', 'Honda', 2015, 4
    union select 'Indianapolis 500','Honda',2016,1
    union select 'Indianapolis 500','Toyota',2019,2
    union select 'Indianapolis 500', 'Jeep', 2016, 3
)

insert CarRace(CarId, RaceId, CarPosition)
select c.CarId, r.RaceId, x.CarPosition 
from x
join car c 
on c.make = x.make 
and c.makeyear = x.makeyear  
join race r 
on r.RaceName = x.racename 


SELECT * from CarRace 
select * from Race 
--1) List all races and any cars they may have, sort by race and then race position.
select r.raceId, r.RaceName, c.CarId, c.make, c.MakeYear, p.LastName, cr.
from race r 
left join CarRace cr
on r.RaceId = cr.RaceId 
left join Car c 
on cr.CarId = c.CarId 
left join person p 
on p.PersonId = c.PersonId 
order by r.RaceName, 
--2) Show all cars and how many races it may have been in.
select c.CarId, c.make, c.MakeYear, NumRaces = count(cr.CarRaceId)
from car c 
left join CarRace cr 
on c.CarId = cr.CarId 
group by c.CarId, c.make, c.MakeYear 
--3) Show all races and how many cars participated in each one.
SELECT r.RaceId, r.RaceName, NumCars = count(cr.CarRaceId)
from race r 
left join CarRace cr 
on r.RaceId = cr.RaceId 
group by r.RaceId, r.RaceName 
order by r.RaceId
--4) Delete all cars from one of the races
select * 
delete cr 
from race r 
join CarRace cr 
on r.RaceId = cr.RaceId
where r.racename = 'Monaco Grand Prix' 
