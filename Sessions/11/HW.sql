-- SM Excellent! 95% See comments, fix and resubmit.
-- lookup how to get the current date and time stamp and use it for the following questions:

--1) show the current date and time
select CurrentDate= CURRENT_TIMESTAMP
--2) in one result set show current day, month, year,second and millisecond
-- SM Tip: Because this is a long statement, split each column to seperate line indented.
select CurrentDay = day(CURRENT_TIMESTAMP), CurrentMonth = MONTH(CURRENT_TIMESTAMP), CurrentYear =  year(CURRENT_TIMESTAMP), CurrentSecond = datepart(second,CURRENT_TIMESTAMP), CurrentMillisecond = datepart(MILLISECOND,CURRENT_TIMESTAMP)
--3) in separate columns show how many milliseconds, seconds, minutes, hours, days ago you were born
-- SM Tip: Because this is a long statement, split each column to seperate line indented.
SELECT DaysSinceBorn = DATEDIFF(day,'2004-08-17',CURRENT_TIMESTAMP), HoursSinceBorn = DATEDIFF(hour, '2004-08-17',CURRENT_TIMESTAMP), MinutesSinceBorn = DATEDIFF(minute,'2004-08-17',CURRENT_TIMESTAMP), SecondsSinceBorn = DATEDIFF(second,'2004-08-17',CURRENT_TIMESTAMP), MillisecondsSinceBorn = datediff_big(MILLISECOND,'2004-08-17',CURRENT_TIMESTAMP)
--4) add 1000 hours to now to see what date and time it will be
select TimeIn1000Hours = DATEADD(hour,1000,CURRENT_TIMESTAMP), CURRENT_TIMESTAMP
--president
/*5.
    Update the time of death for all presidents that do not have a precise DateDied recorded.
    Presidents whose last names start with A - L died at 7:42 pm.
    Presidents whose last names start with M - Z died at 11:02 am. 
*/
--update p 
--set 
-- SM Instead of you making calculation how many minutes to add, use nested dateadd() one for hour and one for minute.
update p 
set p.DateDied = DATEADD(hour,19, DATEADD(minute,42,p.datedied))
--SELECT DATEADD(hour,7, DATEADD(minute,42,p.datedied))
from president p 
where p.datedied is not null 
and p.LastName like '[a-l]%'

update p 
set p.DateDied = DATEADD(hour,11, DATEADD(minute,2,p.DateDied))
--select DATEADD(hour,11, DATEADD(minute,2,p.DateDied))
from president p 
where p.DateDied is not null 
and p.lastname like '[m-z]%'


/*6. Bad data was inserted into the president table. A programmer mistakenly updated Ronald Reagan's first name to be his year born.
       1. Recreate this error
       2. A different programmer is trying to fix the data, but doesn't know which president has this issue. All he\she knows is that one president has a year instead 
          of text for his first name. Show how you would find the bad data and correct it.
*/
update p 
set FirstName = year(p.dateborn)
--SELECT FirstName = p.dateborn, p.dateborn
from president p 
where p.lastname = 'Reagan'
select * from president p
-- SM -50% 2 issues. 
-- 1) You should fix the data. 
-- 2) You might have a president with a number in his first name (example instead of jr.) you should use date function to see if first name can be converted to a date.
select ISDATE(year(p.dateBorn))
from president p 

update p 
set FirstName = 'Ronald'
from president p 
where p.lastname = 'Reagan'


-- medalist
/*7. The Olympic Committee wants to see a list of what dates the Olympics began on. Show in as many lists as required:
     From 1896 - 1950, Winter Olympics began on January 10 and Summer Olympics on June 20.
     From 1950 - Current, Winter Olympics began on February 9 and Summer Olympics on July 23.
*/
-- SM There's one issue here. between is inclusive, you need to include 1950 only once.
SELECT OlympicDate = DATEFROMPARTS(m.OlympicYear,1,10) ,* 
from Medalist m 
where m.OlympicYear BETWEEN 1896 and 1950
and m.season = 'winter'

select OlympicDate = DATEFROMPARTS(m.olympicyear,6,20), *
from Medalist m
where m.OlympicYear between 1896 and 1950
and m.season = 'summer'

select OlympicDate = DATEFROMPARTS(m.OlympicYear,2,9) ,* 
from Medalist m 
where m.OlympicYear between 1951 and 2023
and m.season = 'winter'

-- SM -10% This should be summer.
SELECT OlympicDate = DATEFROMPARTS(m.olympicyear,7,23) ,*
from Medalist m 
where m.OlympicYear between 1951 and 2023
and m.season = 'summer' 

--8 Include the insert statement that was done to bring the president table up to date in the source code data, run the insert so that you have the latest
-- SM Include in data file in database folder.
insert president(Num, FirstName, LastName, Party, dateBorn, DateDied, TermStart, TermEnd)
select 45, 'Donald', 'Trump', 'Republican', '1942-11-20', null, 2017,2021
union select 46, 'Joe', 'Biden', 'Democrat', '1946-06-14', null, 2021, null
