--Invention, use long hand unless otherwise specified, do as select showing before and after, and then convert to update, after each question reinsert the original data

--1 using shorthand syntax extend the life of all the inventors. (add ten years to YearDied)
UPDATE i 
set yeardied = i.yeardied + 10
--select i.yeardied, year died = i.yeardied + 10
from Invention I 
--2	update all USA inventors so they are 18 years old at the time of their invention, do not change Year Invented.
update i
set yearborn = i.YearInvented - 18
--SELECT i.YearInvented - 18, i.YearInvented, *
from invention i
where i.country = 'USA'
/*3
	there is some bad data where the invention was invented before the inventor was born, 
	in those cases change the year invented so that inventor was 90, and change data so that inventor died at 100
*/
UPDATE i
set YearBorn = i.YearInvented - 90, yeardied = YearInvented - 90 + 100
SELECT YearBorn = i.YearInvented - 90, yeardied = YearInvented - 90 + 100,
i.yearborn, i.yearinvented, i.yeardied, AgeAtTimeOfInvention = i.YearInvented - i.YearBorn, AgeAtTimeOfDeath = i.YearDied - i.YearBorn 
from Invention i 
where i.YearInvented < i.YearBorn
--4 change the invention name so it is in this format: Invention Name - Country. eg Dynamite - Sweden
UPDATE i
set InventionName = i.InventionName + ' - ' + I.Country
--SELECT i.InventionName, i.Country, InventionName = i.InventionName + ' - ' + I.Country, * 
from Invention i 


