-- Invention
--1 Insert two new inventions whose inventors are still alive
insert Invention(InventionName, InventionDesc, yearinvented, inventorfirstname, InventorLastName, Country, yearborn, YearDied) 
select 'Self Driving Car', 'very modern', 2022, 'William', 'Jones', 'USA', 1972, null
union SELECT 'flying car', 'very cool', 2022, 'John', 'Roberts', 'Canada', 1969, null
--2 show all inventors that are alive, and instead of null year died show a zero
SELECT YearDiedWithoutNull = ISNULL(i.YearDied,0) ,* 
from invention i 
where i.YearDied is null
--3 show all inventors that are alive and instead of a null year died show 'Alive'
select ISNULL(convert(varchar,i.YearDied),'Alive') ,* 
from Invention i 
WHERE i.YearDied is null
