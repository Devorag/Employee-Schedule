--reports 
--1 list person, place, start date, end date. sorted by person lastname and then by place and then by start date
select p.personId, p.LastName, v.place, v.StartDate, v.EndDate
from person p
join vacation v 
on p.PersonId= v.PersonId
order by p.lastname, v.place, v.startdate 
--2 same as one but only for 2 of the people
select p.personId, p.LastName, v.place, v.StartDate, v.EndDate
from person p
join vacation v 
on p.PersonId= v.PersonId
where p.LastName in ('Adams', 'Bee')
order by p.lastname, v.place, v.startdate 
--3 show how many vacations each person took, and the average length of the vacations
select count(*), p.lastname, AVG(DATEDIFF(day,v.startdate,v.enddate))
from person p 
join vacation v 
on p.PersonId = v.PersonId
group by p.LastName 
--4 show how many people visited each place
select COUNT(*), v.Place
from person p 
join vacation v 
on p.PersonId= v.PersonId 
group by v.Place