-- Invention
--1 show ten Inventions from the Invention table 
SELECT top 10 *  
from invention  
--2 show the ten oldest Inventions 
select top 10 * 
from invention i 
order by i.yearinvented
--3 show the top 5 records based on the age of inventors when they invented their invention, ordered oldest to youngest, also display their age
select top 5 *, Age = i.YearInvented - i.YearBorn
from invention i 
order by Age desc

--4 show the five most recent inventions  
SELECT top 5  * 
from Invention i
order by i.YearInvented desc 
--5 show the Invention with the longest invention name
SELECT top 1 *
from Invention i 
order by LEN(InventionName) desc
--6 Show 3 U.S Inventions with the shortest Invention Descriptions
SELECT top 3 * 
from Invention i
where i.Country = 'USA' 
order by LEN(InventionDesc) 
--7 delete one of Thomas Alva Edison's records
delete top (1) 
--select * 
from Invention i 
where i.InventorLastName = 'Edison'
--8 delete five records that were invented before 1950
delete top (5) 
--select * 
from invention i 
where i.yearinvented < 1950
--9 Add an exclamation mark to the Invention Name of four English inventions
UPDATE top (4) i
set i.inventionname = CONCAT(InventionName, '!')
--SELECT top (4) * 
from Invention i 
where i.Country = 'England'
-- Budget
-- 10 show the five budget records with the highest budget 
SELECT top 5 * 
from budget b 
order by b.Millions desc
-- 11 show the ten oldest budget records
select top 10 * 
from budget b 
ORDER by b.BudgetYear 