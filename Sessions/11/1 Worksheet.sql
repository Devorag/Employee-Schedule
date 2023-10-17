--1. All presidents whose last name begins with a 'J' died at 8 in the morning. Fix the data
update p
set DateDied = dateadd(hour,8, p.datedied)
--SELECT dateadd(hour,8, p.datedied),  --p.datedied
from president p 
where p.LastName like 'j%'
and p.DateDied is not null 
--2. Using a function, show the age at death of all dead presidents ordered from oldest to youngest
select AgeAtDeath = DATEDIFF (year, p.DateBorn, p.DateDied), p.DateDied, p.DateBorn 
from president p 
where p.DateDied is not NULL
order by AgeAtDeath desc
--3. Same as #2, but show age in Milliseconds
select AgeAtDeath = datediff_big (MILLISECOND, p.DateBorn, p.DateDied), p.DateDied, p.DateBorn 
from president p 
where p.DateDied is not NULL
order by AgeAtDeath desc
--4. List the Republican presidents and the year that they were born in
SELECT DATEPART(year, p.dateBorn), year(p.dateborn), p.dateborn, * 
from president p 
where p.party = 'Republican'
/*5. List presidents with two additional columns:
		1. DateBorn displayed in dd-mm-yyyy format (ex. 22-02-1732)
		2. DateDied displayed in Mon dd, yyyy format (ex. Feb 22, 1732) 
*/
SELECT CONVERT(varchar,p.dateborn,104), CONVERT(varchar, p.datedied,107), p.DateBorn, p.DateDied,* 
from president p 
/*6. From 1776 - 1850 the presidential terms began on December 31. Starting 1851, the official start of term became January 20. 
	 Use two select statements to show this information.
*/
SELECT DateTermStart = DATEFROMPARTS(p.TermStart,12,31) ,p.TermStart,* 
from president p 
where p.TermStart BETWEEN 1776 and 1850

SELECT DateTermStart = DATEFROMPARTS(p.TermStart,1,20), * 
from president p 
where p.TermStart > 1850
/*7. Show three different select statements:
		1. List the Republican presidents and the day that they were born
		2. List the Democratic presidents and the month that they died 
		3. List all other presidentss and the year they were born and died
*/

SELECT day(p.DateBorn),* 
from president p 
where p.Party = 'Republican'

select month(p.datedied), p.datedied
from president p 
where p.party = 'Democarat'

select YearBorn = year(p.dateborn), YearDied = year(p.datedied), * 
from president p
where p.party not in ('Democrat', 'Republican') 

	