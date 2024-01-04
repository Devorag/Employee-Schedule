use vacationDB 
go 
--SELECT
--1) Show all person, vacations, and attractions order by last name, vacation place,  attraction, start date, end date, and money spent. 
SELECT p.personId, p.LastName, v.VacationId, v.Place, v.StartDate, v.EndDate, a.AttractionId, a.AttractionName, a.AmountSpent
from person p 
join vacation v 
on p.PersonId = v.PersonId 
join Attraction a 
on v.VacationId = a.VacationId 
order by p.LastName, v.Place, a.AttractionName, v.StartDate, v.EndDate, a.AmountSpent
--2) Show the number of people per vacation place.
select NumOfPeople = count(*), v.place
from person p 
join vacation v 
on p.PersonId = v.PersonId 
group by v.Place
order by NumOfPeople desc
--3) Show the number of  attractions per vacation place.
SELECT NumOfAttractions = count(*), v.Place
from Vacation v 
join Attraction a 
on v.VacationId = a.VacationId 
group by v.Place 
order by NumOfAttractions desc
--4) Show the number of people per attraction sort by amount of people of people from high to low
select NumOfPeople = count(*), a.attractionname
from person p 
join vacation v 
on p.PersonId = v.PersonId 
join Attraction a 
on v.VacationId = a.VacationId 
group by a.AttractionName 
order by NumOfPeople desc
--5) Show the number of people per vacation place and attraction. Show least visited on top and then by vacation place, and then attraction name
select NumOfPeople = count(*), v.place, a.attractionName
from person p 
join vacation v 
on p.PersonId = v.PersonId 
join Attraction a 
on v.VacationId = a.VacationId 
group by v.place, a.AttractionName 
order by NumOfPeople, v.Place, a.AttractionName 
--6) The total amount of money spent per vacation place and attraction. Sort by most money spent from low to high.
select MonseySpent = sum(a.AmountSpent), v.place, a.attractionname
from vacation v 
join Attraction a 
on v.VacationId = a.VacationId 
group by v.Place, a.AttractionName
order by MonseySpent 
--7) Show the total amount of days and money spent per person. Sort by Last Name
select TotalDays = sum(datediff(day, v.StartDate, v.EndDate)), TotalMoneySpent = sum(a.AmountSpent), p.LastName
from person p 
join vacation v 
on p.PersonId = v.PersonId 
join Attraction a 
on v.VacationId = a.VacationId 
group by p.LastName 
order by p.LastName
--DELETE (repopulate data after deleting)
-- 8) Pick a person and vacation place and delete their attractions 
delete a 
from person p 
join vacation v 
on p.PersonId = v.PersonId 
join Attraction a 
on v.VacationId = a.AttractionId 
where p.LastName = 'Adams'
and v.place = 'France'
--9) Delete all vacation attractions where the money spent is greater than $50.
delete a 
from  Attraction a 
where AmountSpent > 50 
--10) Delete all records from one person.
delete a 
from person p 
join vacation v 
on p.PersonId = v.PersonId
join Attraction a 
on v.VacationId = a.VacationId 
where p.LastName = 'Bee'

delete v 
from person p 
join Vacation v 
on p.PersonId = v.PersonId 
where p.LastName = 'Bee'

delete p 
from person p 
where p.LastName = 'Bee'
--UPDATE
--11) Pick one person, double the days he traveled, and the money spent.
update v 
set v.EndDate = DATEADD(day,(datediff(day,v.StartDate, v.EndDate) * 2), v.StartDate)
from person p 
join vacation v 
on p.personId = v.PersonId 
join Attraction a 
on v.VacationId = a.vacationId 
where p.LastName = 'Bee'

update a 
set a.amountspent = a.amountspent * 2 
from person p 
join vacation v 
on p.personId = v.personId 
join attraction a 
on v.VacationId = a.VacationId 
where p.LastName = 'Bee'