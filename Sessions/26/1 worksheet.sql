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

--1) List all races and any cars they may have, sort by race and then race position.

--2) Show all cars and how many races it may have been in.

--3) Show all races and how many cars participated in each one.

--4) Delete all cars from one of the races

