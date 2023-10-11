--AF Great job! 100%
-- Use the Medalist Table
SELECT * from Medalist m

/*
	1. The three winners of the 2008 Women's Swimming Competitions' registration papers got lost. 
	   Therefore, we don't know their country or the year that they were born in.
	   Please insert them regardless.
*/
INSERT Medalist(OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName)
select 2008, 'summer','Athens, Greece' , 'Swimming', 'Women''s swim', 'gold', 'Macy', 'Mustin'
union select 2008, 'summer','Athens, Greece' , 'Swimming', 'Women''s swim', 'silver', 'Kate', 'Spade'
union SELECT 2008, 'summer','Athens, Greece' , 'Swimming', 'Women''s swim', 'bronze', 'Hariot', 'Truman'

 


-- 2. You are currently hacking the Olympic database. Wipe out the Year Born for any medalist who was under the age of 20 when they won their medal.
update m 
set yearborn = null
--select m.OlympicYear - m.YearBorn, * 
from Medalist m 
where m.OlympicYear - m.YearBorn < 20

/* 
	3. The new King of Kenya is in middle of changing the name of his country. 
	   He has demanded to wipe out all traces of the name Kenya even though there is no new name yet. 
	   Please fulfill his request.
*/ 
update m 
set m.country = null
--SELECT *
from Medalist m 
where m.Country = 'Kenya'

--4. Display the age for all American medalists when they won, order by YearBorn, excluding all medalists that don't have a Year Born recorded.
*\

select age = m.olympicyear - m.yearborn, * 
from medalist m 
where m.Country = 'United States' 
and yearborn is not null 
order by m.yearborn

	--5. The Olympic committee has just made a new rule: Any medalist without a country is invalid and will have their medal revoked.
	   Delete all medalists who do not have a country.
*/
DELETE m 
--SELECT * 
from Medalist m 
where m.country is null 
