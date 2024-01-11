--1 In CarDB showing me result set with all people having all cars
use carDB
go 
select * 
from person p 
cross join car c 
--2 Pick an auto class and show all cars having that class
select a.autoclassId, a.autoclassname, c.carId, c.make, c.makeyear
from autoclass a 
cross join car c 
where a.autoclassname = 'Large'
order by c.make, c.makeyear
--3 in VacatonDB show me a list of all people together with all attractions
use vacationDB
go 
;
with x as (
    select distinct a.attractionname
    from attraction a 
)
select p.lastname, x.attractionname 
from x 
cross join person p 
order by p.lastname, x.attractionname