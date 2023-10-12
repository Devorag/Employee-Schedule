-- SM Excellent! 100%
--re run the data file between questions
--1 Delete your least respected president from the table.
delete p 
--select * 
from president p 
where p.num = 17

--2 Delete presidents that did not complete a single term.
DELETE p
--select * 
from president p 
where p.TermEnd - p.TermStart < 4
--3 Delete presidents that served two complete terms and took office between the age of 35 and 50
delete p
--SELECT * 
from president p 
where p.TermEnd - p.TermStart = 8
and p.TermStart - p.YearBorn BETWEEN 35 and 50
--4 Delete all presidents from the Whig party that either have a middle name or started their term under the age of 55.
delete p
--select * 
from president p 
where p.Party = 'Whig'
and 
(
    p.FirstName like '% %'
    or p.TermStart - p.YearBorn < 55
)
