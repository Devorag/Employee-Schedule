-- SM Excellent! 100% See comments, no need to resubmit.
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
SELECT ConcatMedalist = CONCAT (SUBSTRING(m.FirstName, 1,1), '. ', m.LastName, ' - ', LOWER(m.medal), ', ', UPPER(m.country), ': ', m.YearBorn), *
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
set firstname = concat(SUBSTRING(m.LastName,1,1), substring(m.firstname,2,20)), 
lastname = concat(substring(m.firstname,1,1), SUBSTRING(m.LastName,2,20)), 
Season = concat(upper(SUBSTRING(reverse(m.season),1,1)), lower(substring(reverse(m.season),2,5))),
OlympicYear = (m.OlympicYear * 2) - 1, 
Sport = REPLACE(REPLACE(m.Sport, 'a', '*'), 'o', '@')
--SELECT replace( m.firstname, SUBSTRING(m.FirstName,1,1), SUBSTRING(m.LastName,1,1)), m.FirstName, m.LastName, upper(REVERSE(m.Season)), m.Season, (m.OlympicYear * 2) - 1, m.OlympicYear, REPLACE(REPLACE(m.Sport, 'a', '*'), 'o', '@'), m.Sport
from medalist m 


UPDATE m 
set firstname = concat(SUBSTRING(m.LastName,1,1), substring(m.firstname,2,20)), 
lastname = concat(substring(m.firstname,1,1), SUBSTRING(m.LastName,2,20)), 
Season = concat(upper(SUBSTRING(reverse(m.season),1,1)), lower(substring(reverse(m.season),2,5))),
OlympicYear = (m.OlympicYear/2) + 1, 
-- SM Should be the letter o not the number 0.
Sport = REPLACE(REPLACE(m.Sport, '*', 'a'), '@', '0')
--SELECT replace( m.firstname, SUBSTRING(m.FirstName,1,1), SUBSTRING(m.LastName,1,1)), m.FirstName, m.LastName, upper(REVERSE(m.Season)), m.Season, (m.OlympicYear * 2) - 1, m.OlympicYear, REPLACE(REPLACE(m.Sport, 'a', '*'), 'o', '@'), m.Sport
from medalist m 

SELECT * 
from Medalist m

/*
   5. Explore the Microsoft Docs, pick a string function that we did not learn. Write a question that exercises that function for the CPU staff to do. 
*/

/*
Insert a new column that lists the first 3 letters of each word in the sports column. The new column should list the first three letters of the words in the sports column.  For example, if the word is swimming than in the new column it should say 'swi'
*/
-- SM Can you give more info on what you need? What do you mean by getting first 3 letters of "each word"? Did you try to achieve this with string function?
--yes, I used the 'left' function
-- SM So, it's not the first 3 letters of "each word". It's first letters of each record.
select FirstThreeLettersOfSport = left(m.Sport,3), m.Sport
from Medalist m