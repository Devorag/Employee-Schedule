--1 Bring the president table up to date, insert all missing presidents and information. (yeah, this is an "insert" on the "update" sheet)
insert president(num, FirstName, lastname, party, YearBorn, yeardied, TermStart, TermEnd)
SELECT p.num, p.firstname, p.lastname, p.party, p.yearborn, p.yeardied, p.termstart, p.TermEnd
from president p 
where p.num = 17
or p.TermEnd - p.termstart < 4
or 
(
    p.TermEnd - p.TermStart = 8
    and  p.TermStart - p.YearBorn BETWEEN 35 and 50
)
or p.Party = 'Whig'
and 
(
    p.FirstName like '% %'
    or p.TermStart - p.YearBorn < 55
)
--1b Copy the insert statement from the above question to the bottom of "president 2 data.sql" so that you will have the missing data when data is reinserted.

--2 Correct the historical record, give president 44 his middle name.
update p 
set p.FirstName = FirstName + ' Hussein'
--select p.num, 44,* 
from president p 
where p.num = 44 

--3 Change the name of these political parties to their colors; Republican = red, Democrat = blue.
update p 
set party = 'red'
--SELECT p.Party, * 
from president p 
where p.party = 'Republican'

UPDATE p 
set party = 'blue'
from president p 
where p.Party = 'Democrat'
--4 The current president has been impeached. End his term in the current year.
SELECT * 
from president p 

where p.num = 44
--5 In 1845, the Whig party changed its name to the 'Whig Freedom' Party. Fix any presidents' data that has been affected by this change.
UPDATE p 
set Party = 'Whig Freedom'
--SELECT * 
from president p 
where p.Party = 'Whig'

