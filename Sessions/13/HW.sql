-- SM Excellent! 100%
-- Medalist
/*1
The Olympic website is showcasing the history of Olympic games.
The web developer is asking for SQL statements that will provide the following lists.
*/
-- a. Show a list of the first ten years of Olympics played, show just the year
SELECT distinct top (10) m.olympicyear
from medalist m 
order by m.olympicyear



-- b. List the first 10 olympic games, show their year, location, and season
SELECT distinct top (10) m.Sport, m.OlympicYear, m.OlympicLocation, m.Season 
from Medalist m 
order by m.OlympicYear
-- c. Show 5 sports and their subcategory that were played in France before 1950, include the location in the result set
SELECT distinct  top (5) m.Sport, m.SportSubcategory, m.OlympicLocation, m.olympicyear
from Medalist m 
where m.OlympicLocation like '%France%'
and m.OlympicYear < 1950
order by m.olympicyear
-- d. Show a list of the ten oldest athletes to win gold medals for sports Biathlon, Boxing, and Ski Jumping, the list should show name, age, and year born, sort by age and then by last name
select top 10 m.FirstName, Age = M.olympicyear  - m.yearborn, m.yearborn
from medalist m 
where m.Medal = 'gold'
and m.Sport in ('Biathlon', 'Boxing', 'Ski Jumping')
order by Age desc, m.LastName


-- President
/*2. We are in middle of updating the U.S Government website and require some modifications to make it more modern looking.
The new graphic designer does not like the current list of presidents that shows null for living and current presidents.
Show a list of presidents, include all information. For null date died show a dash, otherwise show in format MM/DD/YYYY. 
For null term end show Current. Sort by Num descending
*/
select DateDiedWithoutNull = ISNULL(CONVERT(varchar,p.DateDied,101), '-'),
TermEndWithCurrent = ISNULL(CONVERT(varchar,p.TermEnd),'Current'), * 
from president p 
--where p.DateDied is null 
--or p.termend is null
order by p.num desc



select TermEndWithCurrent = ISNULL(CONVERT(varchar,p.TermEnd),'Current'), *
from president p 
where p.TermEnd is null
order by p.num desc

--3 The new U.S Government website needs some new lists. Please provide the following data: 
--a List the 3 presidents that served the shortest term
SELECT top 3 YearsServed = p.TermEnd - p.TermStart, *
from president p 
where p.TermEnd is not null 
order by YearsServed 
--b Show the top two parties with the most presidents. Show the party name and the number of presidents.
select top 2 NumOfPresidentsInParty =  count(p.party), p.party
from president p
group by p.party 
order by NumOfPresidentsInParty desc
--While the website was being worked on, security was not enforced and a hacker broke into the president table! 
--As part of the investigation we need to reproduce the SQL statements that were used in the hack.
--Write statments that do the following:
*/
--a Delete three republican presidents
delete top (3) p
--select top 3 * 
from president p 
where p.Party = 'Republican'
--b Delete 1 non-republican that served two terms after 1960
delete top (1) p 
--SELECT * 
from president p 
where p.Party <> 'Republican'
and p.TermEnd - p.TermStart > 4
and p.TermStart > 1960

--c Reverse the last names of 7 presidents that lived before 1900
update top (7) p 
set p.LastName = REVERSE(p.LastName)
--ELECT top 7 REVERSE(p.LastName), * 
from president p 
where year(p.DateBorn) < 1900
