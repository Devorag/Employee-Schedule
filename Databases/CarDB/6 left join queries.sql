use CarDB 
go
--In the CarDB add a person without cars, and a car without trips
--1) Show all cars with trips
SELECT c.CarId, C.make, c.Model, c.MakeYear, t.TripId, t.Destination, t.MilesTraveled
from car c 
join trip t 
on c.carId = t.carId 
order by c.make
--2) Show all cars and any trips they may have
SELECT c.CarId, C.make, c.Model, c.MakeYear, t.TripId, t.Destination, t.MilesTraveled
from car c 
left join trip t 
on c.carId = t.carId 
order by c.make
--3) Same as 2 but do not show any nulls
SELECT c.CarId, C.make, c.Model, c.MakeYear, TripId = isnull(t.TripId,0), Destination = isnull(t.Destination, ''),MilesTraveled = isnull(t.MilesTraveled,0)
from car c 
left join trip t 
on c.carId = t.carId 
order by c.make
--4) show all people, cars, and any trips
SELECT  p.personId, p.lastname, c.carId, c.make, c.model, c.makeyear, t.tripId, t.destination
from person p 
join car c 
on p.personId = c.personId 
left join trip t 
on c.carId = t.carId  
order by c.make, c.model, c.makeyear, t.tripId
--5) show all people, any cars, and any trips
SELECT  p.personId, p.lastname, c.carId, c.make, c.model, c.makeyear, t.tripId, t.destination
from person p 
left join car c 
on p.personId = c.personId 
left join trip t 
on c.carId = t.carId  
order by c.make, c.model, c.makeyear, t.tripId

--6) show the following cannot be done: show all people, any cars, but only cars with trips

--7) show the number of cars per person, if no cars then show zero
select count(c.CarId), p.LastName
from person p 
left join car c 
on p.PersonId = c.PersonId 
group by p.lastname

--8) show people that do not have cars
SELECT * 
from person p 
left join car c 
on p.personId = c.personId 
where c.CarId is null 