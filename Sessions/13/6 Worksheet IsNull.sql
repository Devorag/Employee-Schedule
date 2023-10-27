-- President
--1 Insert a new president for the current term
insert president(p.num, p.firstname, p.lastname, p.party, p.dateborn, p.datedied, p.termstart, p.TermEnd)
SELECT 47, 'Sadam', 'Hussein', 'Democrat','01-01-1980', null, 2023, null

--2 show the current president with a zero instead of a null term end
SELECT *, TermEndWithoutNull = ISNULL(p.TermEnd,0)
from president p 
where p.TermEnd is null
--3 show all presidents that are alive with the current date instead of a null date died
SELECT *, CurrentDate = ISNULL(p.DateDied,GETDATE()) 
from president p 
where p.DateDied is null
--4 display the words 'still alive' for all live presidents instead of a null date died
SELECT *, StillAlive = ISNULL(CONVERT(varchar,p.DateDied),'still alive')
from president p 
where p.DateDied is null 