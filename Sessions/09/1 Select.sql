-- SM Excellent! 100%
--The US Gov needs the following reports, please write the SQL that produces these reports.

--1 Show one result set including all presidents with a blank row on top. Only show columns Num, FirstName, LastName, Party; sort them by president number.
select p.num, p.FirstName, p.LastName, p.party from President p 
union select num = '',firstname = '', lastname = '', party = '' 
order by p.num
--2 Show all with a column for age at term start sorted by age and then Num. Arrange the columns so that "Age at start of term" is after TermStart.
select p.PresidentId, p.Num, p.FirstName, p.LastName, p.Party, p.YearBorn, p.YearDied, p.TermStart, AgeAtTermStart = p.TermStart - p.YearBorn, p.TermEnd 
from president p 
order by AgeAtTermStart, p.num
--3 Show a list of presidents with their full name plus political party like this: Last Name, First Name (party). Do not include any other columns.
SELECT FullNamePlusParty = p.LastName + ', ' + p.FirstName + ' (' + p.Party + ')'  
from president p 
--4 Show all presidents that took office under age 60, include age column.
SELECT AgeAtTermStart = p.TermStart - p.YearBorn, * 
from president p 
where p.TermStart - p.YearBorn < 60
--5 Show all with columns for age at time of begin term, end term, death, and how many years they served. If a president is still alive then show null for year died and death age.
SELECT AgeAtTermStart = p.TermStart - p.YearBorn, AgeAtTermEnd = p.TermEnd - p.YearBorn, AgeAtDeath = p.YearDied - p.YearBorn, YearsServed = p.TermEnd - p.TermStart, * 
from president p


--6 Show all non 'Democrat' presidents with an 'e' or 'p' in their first name.
SELECT * 
from president p 
where p.Party <> 'Democrat'
and p.FirstName like '%[pe]%'

--7 Show all presidents with last names: Adams, Clinton, or Bush; that were either over 55 at the start of their term or started their term in the 20th century.
SELECT AgeAtTermStart = p.TermStart - p.YearBorn, *
from president p 
where p.LastName in ('Adams', 'Clinton', 'Bush')
and 
(
    p.TermStart - p.YearBorn > 55
    or p.TermStart between 1900 and 1999
)

--8 Show all presidents that died less than 60 years old, include age at death, and sort by party then by number of years served.
SELECT AgeAtDeath = p.YearDied - p.YearBorn, NumberOfYearServed = p.TermEnd - p.TermStart, * 
from president p 
where p.YearDied - p.YearBorn < 60
order by p.Party, NumberOfYearServed
--9 Show all Democratic presidents who took office between the ages of 30 and 50, and Republican presidents who served more than one term, sorted by their parties.
SELECT NumberOfYearsServed = p.TermEnd - p.TermStart, Age = p.TermStart - p.YearBorn, *
from president p 
where 
(
    p.Party = 'Democrat'
    and p.TermStart - p.YearBorn between 30 and 50
)
or 
(
    p.Party = 'Republican'
    and p.TermEnd - p.TermStart > 4
)
order by p.Party
--10 Show all living presidents, sorted by president number
SELECT * 
from president p 
where p.YearDied is null
order by p.num