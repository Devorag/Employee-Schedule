-- president 
-- 1. JFK was assassinated precisely at 12 noon on Nov 22, 1963. Set his precise time of death.
update p 
set datedied = DATEADD(hour,12,p.datedied)
--select DATEADD(hour,12,p.datedied), p.datedied, * 
from president p 
where p.LastName = 'Kennedy'
--2. List the presidents that have died with an additional column displaying the amount of years after 1776 that they died. Sort from lowest to highest
SELECT YearsDiedAfter1776 = DATEDIFF(year, '1776', p.dateDied), p.datedied, * 
from president p 
where p.datedied is not null
order by YearsDiedAfter1776
--3. Show Whig presidents and the day of the week that they were born on.
SELECT DayOfBirth = DATEPART(weekday, p.dateborn), * 
from president p 
where p.party = 'Whig'
--4. Show the year, month and day that all presidents were born on in three seperate columns
select year(p.dateborn), month(p.dateborn), day(p.dateborn), * 
from president p 
/*5. Display two lists:
		1. All Republican presidents with their DateBorn in yyyymmdd format and DateDied in yyyy/mm/dd format.
		2. All other presidents with their DateBorn in yyyy.mm.dd and DateDied in dd mon yyyy hh:mi:ss:mmm
*/
select CONVERT(varchar, p.dateborn,111),* 
from president p 
where p.party = 'Republican'

select CONVERT(varchar,p.dateborn,102), CONVERT(varchar,p.datedied, 113),* 
from president P 
where p.party <> 'Republican'


-- world record
/*6. 
    In the World Record Database, all records were inserted on December 31 of the Year Achieved.
    List world records with a column that shows when they were recorded in the World Record Database. 
*/
select DATEFROMPARTS(w.YearAchieved,12,31),* 
from WorldRecord w 


	


