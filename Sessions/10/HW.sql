-- medalist
--For all updates do select first to check your work
--reinsert the data between questions if necessary
-- 1. Show list of medalist with score of how much their last name sounds like yours. Sort with the most similar at the top
SELECT SoundsLikeGoldenberg = DIFFERENCE(m.lastname, 'Goldenberg'), m.lastname
from medalist m 
order by SoundsLikeGoldenberg desc
select * from medalist m
/*
   2. Insert a new Winter Olympic Competition for the current year, all data based on the 2004 (note: use 2002 instead) Winter Olympics. 
      Reverse all the first and last names and replace all the 'a's' in the first names with 'w's'
*/     
insert Medalist(OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 2023, m.Season, m.OlympicLocation, m.Sport, m.SportSubcategory, m.Medal, replace (REVERSE(m.FirstName), 'a', 'w'), reverse(m.LastName), m.Country, m.YearBorn
from medalist m
where m.OlympicYear = 2002


 

/*
   3. We need to produce a report that has the Medalist in the following format.
      Format: First Initial of Medalist. Last Name - Medal in lowercase, Country in Uppercase: YearBorn (ex. S. Versis - bronze, GREECE: 1879)
      Show all medalists with this additional column.
*/
SELECT CONCAT (SUBSTRING(m.FirstName, 1,1), '. ', m.LastName, ' - ', LOWER(m.medal), ', ', UPPER(m.country), ': ', m.YearBorn), *
from Medalist m 

/*
   4. You are going to hold RecordKeeper ransom by "encrypting" the medalist table. Encrypt it following the instructions below. 
Also prepare a decryption statement, so that when ransom is paid we can fix the data. Test the decryption statement to ensure that it works.
         1) Swap initials of first and last names. John Smith would become Sohn Jmith 
         2) Reverse Olympic Season, proper case it after being reversed
         3) Double the Olympic Year and then subtract 1 from it
         4) In Sport replace all letters, "a" with "*", "o" with "@"
*/
UPDATE m 
set firstname = replace( m.firstname, SUBSTRING(m.FirstName,1,1), SUBSTRING(m.LastName,1,1)), 
lastname = replace(m.lastname, substring(m.lastname,1,1), substring(m.firstname,1,1)), 
Season = concat(upper(SUBSTRING(reverse(m.season),1,1)), lower(substring(m.season,2,5))),
OlympicYear = (m.OlympicYear * 2) - 1, 
Sport = REPLACE(REPLACE(m.Sport, 'a', '*'), 'o', '@')
--SELECT replace( m.firstname, SUBSTRING(m.FirstName,1,1), SUBSTRING(m.LastName,1,1)), m.FirstName, m.LastName, upper(REVERSE(m.Season)), m.Season, (m.OlympicYear * 2) - 1, m.OlympicYear, REPLACE(REPLACE(m.Sport, 'a', '*'), 'o', '@'), m.Sport
from medalist m 

update m
set firstname = m.firstname, LastName = m.LastName, Season = m.Season, OlympicYear = m.OlympicYear, Sport = m.Sport
from Medalist m 


SELECT concat(upper(SUBSTRING(m.season,1,1)), lower(substring(m.season,2,5))), m.Season
from Medalist m 


/*
   5. Explore the Microsoft Docs, pick a string function that we did not learn. Write a question that exercises that function for the CPU staff to do. 
*/

/*
Insert a new column that lists the first 3 letters of each word in the sports column. 
*/


