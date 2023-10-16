-- World Record
--For all updates do select first to check your work

-- lower, upper, reverse
-- 1.Update all World Records by setting their categories to be uppercase. First check what it will look like with a select statement
update w 
set w.category = UPPER(w.category)
--SELECT w.category, UPPER(w.category)
 from worldrecord  w 
--1b Fix the case of the categories, make them proper case

--2. List all World Records with 3 additional columns, RecordName Uppercase, FullName reversed and Country Lowercase
SELECT upperRecordName = upper(w.RecordName), REVERSEfullname = (w.FullName), lowercountry = LOWER(w.Country), w.RecordName, w.FullName, w.Country
from WorldRecord w 
-- len
--3. List all records ordered by the length of their RecordDesc, and include the length in the result set
select LengthOfDesc = LEN(w.RecordDesc), w.RecordName, w.RecordDesc
from WorldRecord w 
order by len (w.RecordDesc)
-- replace
--4. List all records whose FullName contains a 'D'. In additional column replace the 'D' with an 'E'.
SELECT w.FullName, replacedfullname = REPLACE(w.fullname, 'd','e')
from WorldRecord w
where w.fullname like '%d%'
--5. Same as 4 but also replace all the 'I's' with 'O's'
SELECT w.FullName, replacedfullname = REPLACE(REPLACE(w.fullname, 'd','e'), 'i', 'o')
from WorldRecord w
where w.fullname like '%d%'
-- concat 
-- 6. Show all records with additional column formatted FullName - Category: YearAchieved
SELECT CONCAT(w.FullName, ' - ', w.Category, '; ', w.YearAchieved)
from WorldRecord w 
-- substring
--7. Show all records with additional column containing initial of their FullName
SELECT w.FullName, initial = substring(w.fullname,1,1)
from WorldRecord w 
--8. Show all records with additional column with initial formatted like this Record Name, Category, I. (Highest Jump by a dog, Animals, F.)
SELECT concat(w.RecordName, ', ', w.Category, ', ',SUBSTRING(w.FullName,1,1), '.')
from WorldRecord w 
--trim
--9. Show all records where full name ends with a space, then update it to remove space
UPDATE w 
set FullName = TRIM(w.FullName)
--SELECT TRIM(w.FullName)
from WorldRecord w
where w.FullName like '% ' 
-- charindex
--10. For all records where FullName is more than one word show the numeric position of start of second name in an additional column
SELECT w.FullName, PosSecondName = CHARINDEX(' ', w.FullName)
from WorldRecord w
where w.FullName like '% %' 

SELECT w.fullname, SUBSTRING(w.fullname, CHARINDEX(' ', w.FullName) + 1, 1000)
from WorldRecord w 
where w.FullName like '% %' 
-- replicate
--11. Use replicate to give each record stars to match the number of its' amount, order by most stars
select w.RecordName, w.Amount, NumStars = REPLICATE('*', w.Amount)
from WorldRecord w 
-- difference
--12. List all records ordered by best match to your country.
select w.recordname, w.country, SoundsLikeUSA = difference(w.Country, 'USA')
from WorldRecord w 
order by SoundsLikeUSA