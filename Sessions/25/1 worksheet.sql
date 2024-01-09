--All with CTE
--analyze literal values
--1 for each person show the number of records, min, max, and avg
;
with x as (
    select LastName = 'Smith', Amount = 19
    union select LastName = 'Smith', Amount = 10
    union select LastName = 'Smith', Amount = 20
    union select LastName = 'Jones', Amount = 30
    union select LastName = 'Jones', Amount = 40
    union select LastName = 'Smith', Amount = 50
)
select x.lastname, count(*), min(x.amount), max(x.amount), avg(x.amount)
from x 
group by x.lastname
--Aggregate based on aggregate
--2. In RecordKeeper What is the average year that countries created their first invention
use RecordKeeperDB 
go 
;
with x as (
    select i.country, MinYear = min(i.yearinvented)
    from invention i 
    group by i.country 
)
select avg(x.MinYear)
from x
--insert sample data
--3 In cardb insert the following car info using a CTE, either ensure that you have these Person records or change to match your data
use cardb
go
with x as (
    select Person='Smith', Make='Lego', Model='ABC', MakeYear=2039, Price=200000, Used=0, AutoClass='Mid-size'
    union select 'Smith','Segway', 'Rumbler', 2050, 135000, 0, null
    union select 'Smith','SpaceX', 'BirdX', 2059, 13000, 1, 'Two-Seater'
    union select 'Jones','Google', 'WebSurfer', 2038, 100, 0, 'Small SUV'
)

insert car(PersonId, Make, Model, MakeYear, Price, Used, AutoClassId)
select p.personId, x.make, x.MakeYear, x.price, x.used, a.AutoClassId 
from x 
join person p 
on p.LastName = x.person 
left join AutoClass a 
on a.AutoClassName = x.AutoClass 

SELECT * 
from car c 
order by carid desc

--CRUD
--4 in cardb delete anybody with less than 3 cars (ensure that you have some data for that)
with x as(
SELECT c.PersonId
from car c 
group by c.PersonId 
having count(*) < 3 
)
delete c 
from x 
join car c 
on c.PersonId = x.PersonId 
--5 for all people with more than 3 cars update the cars to used = 1
with x as(
SELECT c.PersonId
from car c 
group by c.PersonId 
having count(*) > 3 
)
update c 
set used = 1 
from x 
join car c 
on c.PersonId = x.PersonId 