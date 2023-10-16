-- Invention
--For all updates do select first to check your work
select * from Invention i 
-- 1. Update all Inventors. Set their first names to be Uppercase and last names to be Lowercase.
update i 
set InventorFirstName = UPPER(i.InventorFirstName), InventorLastName = lower(i.InventorLastName)
--SELECT i.InventorFirstName, i.InventorLastName, upper( i.InventorFirstName), lower(i.InventorLastName)
from Invention i
-- 2. List all inventions ordered by the length of their Invention Desc where the Invention Desc is over 500 characters and include the length in the result set.
select LengthOfDesc = LEN(i.inventiondesc)
from invention i 
where LEN(i.InventionDesc) >  500
order by LengthOfDesc
-- 3. For all invention names that contain the word bomb, replace bomb with explosive
UPDATE i 
set InventionName = REPLACE(i.InventionName, 'bomb', 'explosive')
--SELECT i.inventionname, REPLACE(i.InventionName, 'bomb', 'explosive')
from Invention i 
where i.InventionName like '%bomb%'
-- 4. Update all invention names to include the first initial of its' inventor (ex. J. Carbonated Water). 
update i 
set InventionName = CONCAT(SUBSTRING(i.InventorFirstName,1,1), '. ', i.InventionName)
--select CONCAT(SUBSTRING(i.InventorFirstName,1,1), '. ', i.InventionName), i.InventorFirstName
from Invention i 
-- 5. For all inventors that have more than one name, show a column that has the numeric position of the start of their second name
SELECT PosSecondName = CHARINDEX(' ', i.InventorFirstName) + 1
from Invention i 
where i.InventorFirstName like '% %'
-- 6. Show another column with the initials of each inventor (ex. T.E.)
SELECT CONCAT(SUBSTRING(i.InventorFirstName,1,1), '. ',  SUBSTRING(i.InventorLastName,1,1), '.'), i.InventorFirstName, i.InventorLastName
from Invention i 
-- 7. Give each inventor the amount of stars matching their age at time of invention. Add these stars to their FirstName.
SELECT AgeAtInvention = i.YearInvented - i.YearBorn, concat(i.InventorFirstName, REPLICATE('*', i.YearInvented - i.YearBorn)) 
from Invention i 
-- 8. Some invention descriptions end with a space. Remove the space.
UPDATE i 
set InventionDesc = tRIM(InventionDesc)
--SELECT TRIM(InventionDesc)
from Invention i 
where InventionDesc like '% '