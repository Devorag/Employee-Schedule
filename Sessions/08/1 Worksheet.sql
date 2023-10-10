-- For the Invention Table

--1. Insert two new inventions whose Inventors are still alive today.
INSERT Invention(inventionname, inventiondesc, yearinvented, inventorfirstname, inventorlastname, country, yearborn, yeardied)
select 'Tablet', 'Cool new Computer', 2000, 'Cool', 'Tablename', 'USA', 1985, NULL
union SELECT 'Pocket watch', 'Cool new watch', 1900, 'Pete', 'Watchman', 'USA', 1880, NULL
--2. Insert two new inventions without an Invention Description.
INSERT Invention(inventionname, yearinvented, inventorfirstname, inventorlastname, country, yearborn, yeardied)
select 'Fly swatter', 1900, 'Bugsy', 'Flyman', 'USA', 1890, 1925
union SELECT 'Fly Paper', 1910, 'Nat', 'Flyman', 'USA', 1890, 1925
--3. There was a mistake made in the Invention data. John Blankenbaker is still alive! Fix the data
UPDATE i 
set yeardied = null
--SELECT * 
from Invention i 
where i.InventorFirstName = 'John' 
and i.InventorLastName = 'Blankenbaker'
--4. Show a list of all inventions with inventors still alive
select * from Invention i where i.YearDied is null
--5. Delete all Inventions with inventors born before 1950 who are still alive
--select *
delet i 
from Invention i 
where i.YearBorn < 1950
and i.YearDied is null
-- Common Errors:
--6. Show the age of death for Inventors
SELECT AgeOfDeath = i.YearDied - i.YearBorn
from invention i
order by i.YearBorn

--7. Where Invention Description is null, add the words 'No Description', show the records affected
update i 
set i.InventionDesc = InventionDesc + 'No Description'
--SELECT i.InventionDesc + 'No Description', * 
from Invention i 
where i.InventionDesc is NULL

--8 Try to update a non-nullable column to null
UPDATE Invention set InventionName = null
