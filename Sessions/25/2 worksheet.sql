--1 The following list has student's answers for a spelling test. The correct spelling is below. Use a CTE to show the 'records' with the wrong answers.
;
with x as (
select       StudentName = 'Jones', Word = 'calendar'
union select 'Smith','calender'
union select 'Smith','definitely'
union select 'Jones','definately'
union select 'Smith','tomorrow'
union select 'Jones','tommorrow'
union select 'Jones','noticeable'
union select 'Smith','noticable'
union select 'Jones','convenient'
union select 'Smith','convinient'
union select 'Smith','deteriorate'
union select 'Jones','deterioreit'
union select 'Smith','beginning'
union select 'Jones','begining'
union select 'Smith','disappear'
union select 'Jones','dissappear'
)
select * 
from x 
where x.word not in ('calendar', 'definitely', 'tomorrow', 'noticeable', 'convenient', 'deteriorate', 'beginning', 'disappear')
--Correct Spelling
/*
'calendar'
'definitely'
'tomorrow'
'noticeable'
'convenient'
'deteriorate'
'beginning'
'disappear'
*/

--medalist
--2 What is the average first olympic year for all sports?
with x as (
    select OlympicYear = min(m.olympicyear), m.sport
    from medalist m 
    group by m.sport
)
select AvgFirstOlympicYear = avg(x.olympicyear) 
from x 
--3 Delete any records for countries that have less than 10 medals
with x as(
    select m.country
    from medalist m 
    group by m.country
    having count(*) < 10
)
delete m 
from x 
join Medalist m 
on m.Country = x.country 
--4 For all countries with more than 10 medals update the medal to Gold
with x as(
select m.country 
from Medalist m 
group by m.Country 
having count(*) > 10 
)
update m 
set medal = 'gold' 
from medalist m 
join x
on m.country = x.Country 
--5 vacationdb, insert the following sample data into the vacation table
use vacationDB 
go 
with x as (
    select LastName = 'Adams', TransportationDesc = 'Boat', Place = 'Timbuktu', StartDate = '2025-12-01', EndDate = '2035-12-15'
    union select 'Bee', 'Bus', 'La La Land', '2035-12-01','2035-12-15'
    union select 'Carter', 'Plane', 'Moon', '2045-12-01','2035-12-15'
)
insert vacation(personId, TransportationId, Place, StartDate, EndDate)
select p.personId, t.transportationId, x.place, x.startDate, x.enddate
from x 
join person p 
on p.lastname = x.lastname
join transportation t 
on t.transportationdesc = x.transportationdesc