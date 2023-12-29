--reports
--1 show a list of rockets
select *
from rockets r 
--2 show a list of journeys, do not show foreign key
select j.PlanetName, j.MilesTraveled, j.launchdate, j.DateReachedDestination, j.DateReturned
from journey j 
--3 list each rocket, planet and distance traveled. sort by rocket and then by planet
select r.RocketName, j.PlanetName, j.MilesTraveled
from rockets r 
join journey j 
on r.RocketsId = j.RocketsId 
order by r.RocketName, j.PlanetName
--4 same as 3 but only for 2 rockets
select r.RocketName, j.PlanetName, j.MilesTraveled
from rockets r 
join journey j 
on r.RocketsId = j.RocketsId 
where r.RocketName in ('Delta', 'Titan')
order by r.RocketName, j.PlanetName
--5 same as 3 but only for 2 planets
select r.RocketName, j.PlanetName, j.MilesTraveled
from rockets r 
join journey j 
on r.RocketsId = j.RocketsId 
where j.PlanetName in ('Venus', 'Mercury')
order by r.RocketName, j.PlanetName
--6 show the number of trips per rocket, total distance traveled, date of first trip, date of last trip
select TripsPerRocket = COUNT(*), TotalDistanceTraveled = SUM(j.MilesTraveled), DateFirstTrip = MIN(j.launchdate), DateLastTrip = MAX(j.launchdate), r.RocketName
from rockets r 
join Journey j 
on r.RocketsId = j.RocketsId 
group by r.RocketName 
--7 show the number of rockets and the average year built per planet
select NumOfRockets = count(*), AvgYearBuiltPerPlanet = AVG(r.YearBuilt), j.PlanetName
from rockets r 
join Journey j 
on r.RocketsId = j.RocketsId 
group by j.PlanetName

