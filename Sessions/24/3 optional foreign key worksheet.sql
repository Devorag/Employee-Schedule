/*
1) Add table to CarDB that will store a list of car Classifications, call it AutoClass
2) Add column to Car table for foreign key to AutoClass (optional)
3) Populate with system and sample data
AutoClass data:
Minicompact
Subcompact
Compact
Mid-size
Large
Two-seater
Minivan
Small SUV
Standard SUV
*/

--II Reports
--1) Show all cars. Include car make, model, year, and AutoClass. Sort by AutoClass, then make and model. If a car has no AutoClass, show blank rather than null
SELECT c.make, c.model, c.makeyear, ISNULL(a.autoclassname, '')
from car c 
left join autoclass a 
on c.autoclassId = a.autoclassId
order by a.autoclassId, c.make, c.model
--2) Show only cars that have a AutoClass, same columns and sort
SELECT c.make, c.model, c.makeyear, a.autoclassname
from car c 
join autoclass a 
on c.autoclassId = a.autoclassId
order by a.autoclassId, c.make, c.model

--3) Show the make, model, and year of all cars that do not have a AutoClass. Sort by those columns
SELECT c.make, c.model, c.makeyear, ISNULL(a.autoclassname, '')
from car c 
left join autoclass a 
on c.autoclassId = a.autoclassId
where a.AutoClassId is null 
order by c.make, c.model
--4) Show all car AutoClasses with number of cars per AutoClass (0 if there are none)
select a.AutoClassName, NumOfCars = count(c.carId)
from AutoClass a 
left join car c 
on a.AutoClassId = c.AutoClassId 
group by a.AutoClassName  
order by a.AutoClassName

--5) Show all AutoClasses that do not have any cars in our db
select a.AutoClassName, NumOfCars = count(c.carId)
from AutoClass a 
left join car c 
on a.AutoClassId = c.AutoClassId 
where c.CarId is null 
