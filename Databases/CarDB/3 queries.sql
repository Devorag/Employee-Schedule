use CarDB 
go 
--SELECT
--1) show all person, cars, trips without repeating any columns order by person, car, trip start, end, and miles traveled.
select p.personId, p.lastname, c.CarId, c.Make, c.model, c.MakeYear, c.Price, c.Used, t.TripId, t.Destination, t.StartDate, t.EndDate, t.MilesTraveled
from person p 
join car c 
on p.PersonId = c.PersonId 
join trip t 
on c.CarId = t.CarId 
order by p.LastName, c.Make, t.StartDate, t.EndDate, t.MilesTraveled
--2) Show the number of cars per person.
select count(*), p.LastName
from person p 
join car c 
on p.personId = c.PersonId 
group by p.LastName
--3) Show number of trips per car.
select count(*), c.CarId, c.make, c.MakeYear
from car c 
join trip t 
on c.CarId = t.CarId 
group by c.CarId, c.Make, c.MakeYear
--4) Show the number of trips per person.
select NumTripsPerPerson = count(*), p.lastname
from person p 
join car c 
on p.PersonId = c.PersonId 
join trip t 
on c.CarId = t.CarId
group by p.lastname
--5) Show the total amount of miles and days traveled per person.
select sum(t.milestraveled), DATEDIFF(day, t.StartDate, t.EndDate), p.LastName
from person p 
join car c 
on p.PersonId = c.PersonId 
join trip t 
on c.CarId = t.CarId
group by DATEDIFF(day, t.StartDate, t.EndDate), p.LastName
--6) Show 1 thru 6 even for people that don't have cars, and cars that don't have trips

--DELETE (repopulate data after deleting)
--1) Delete all trips where the total days traveled were more that three days.
delete t 
from trip t 
where DATEDIFF(day, t.startdate, t.enddate) > 3 
--2) Pick a person and delete all his\her trips, then delete his\her cars, then delete the person
delete t
from person p 
join car c 
on c.personId = p.personId
join trip t 
on c.carId = t.carId
where p.lastname = 'Smith '

delete c 
from person p 
join car c 
on c.PersonId = p.PersonId 
where p.LastName = 'Smith'

delete p from person p where p.LastName = 'Smith'
--3) Delete all cars (and related trips) that were made between 2015 and 2020
delete t
from car c 
join trip t 
on c.CarId = t.CarId 
where c.MakeYear between 2015 and 2020  


delete c 
from car c 
where c.MakeYear between 2015 and 2020 
--4) Pick one person and delete all his\her trips
delete t 
from person p 
join car c 
on p.personId = c.personId
join trip t 
on c.carId = t.carId
where p.lastname = 'Jones'

--UPDATE
--1) Increase the prices of all cars made in 1900's by 10%.
update c 
set c.price = c.Price * 1.1
from car c  
where c.MakeYear between 1900 and 1999
--2) For each trip add the name of the car to the trip destination in parenthesis
update t 
set t.Destination = CONCAT(t.Destination, ' (', c.Make, ')')
from car c 
join trip t 
on c.CarId = t.CarId 
--3) Pick one person and double the amount of miles traveled.
update t
set t.milestraveled = t.milestraveled * 2 
from person p 
join car c 
on p.PersonId = c.PersonId 
join trip t 
on c.CarId = t.CarId 
where p.lastname = 'Smith'
--4) Pick one person and increase all trip end days by 10 days.
update t 
set t.enddate = dateadd(day, 10, t.enddate)
from person p 
join car c 
on p.PersonId = c.PersonId 
join trip t 
on c.CarId = t.CarId 
where p.lastname = 'Jones'