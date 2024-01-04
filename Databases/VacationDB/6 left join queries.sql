--In VacationDB add a person without a vacation and a vacation without attractions
use VacationDb 
go
--1 Show all people with vacations and attractions, sorted by person last name, vacation place, attraction name
SELECT p.PersonId, p.LastName, v.VacationId, v.Place, a.AttractionId, a.AttractionName
from person p 
join vacation v 
on p.personId = v.personId 
join attraction a 
on v.vacationId = a.VacationId 
order by p.LastName, v.place, a.AttractionName
--2 Show all people, their vacations, and any attractions, sorted same as 1
SELECT p.PersonId, p.LastName, v.VacationId, v.Place, a.AttractionId, a.AttractionName
from person p 
join vacation v 
on p.PersonId = v.PersonId 
left join Attraction a 
on v.VacationId = a.VacationId 
order by p.LastName, v.place, a.AttractionName 

--3 Show number of attractions per vacation place, show zero if no attractions, sort by number of attractions and then by vacation place
select v.place, NumOfAttractions = count(a.AttractionId)
from vacation v 
left join Attraction a 
on v.VacationId = a.VacationId
group by v.place  
order by NumOfAttractions, v.place
--4 Show number of attractions per person, show zero if no attractions
SELECT p.LastName, NumOfAttractions = count(a.AttractionId)
from person p 
left join Vacation v 
on p.PersonId = v.vacationId 
left join Attraction a 
on v.VacationId = a.VacationId 
group by p.LastName 
order by NumOfAttractions, p.LastName 
--5 Delete the person that has no vacations
delete p 
from Person p 
left join vacation v 
on p.PersonId = v.PersonId 
where v.VacationId is null 
--6 Delete any vacation that has no attractions
delete v 
from vacation v 
left join Attraction a 
on v.VacationId = a.VacationId 
where a.AttractionId is null 
