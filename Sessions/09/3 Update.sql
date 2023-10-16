-- SM Excellent! 100% See comment, no need to resubmit.
--1 Bring the president table up to date, insert all missing presidents and information. (yeah, this is an "insert" on the "update" sheet)
insert president(num, FirstName, lastname, party, YearBorn, TermStart, TermEnd)
select 45, 'Donald', 'Trump', 'Republican', 1946, 2017, 2021
union select 46, 'Joe', 'Biden', 'Democrat', 1942, 2021, null

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
update p 
set TermEnd = 2023
--SELECT *
from president p 
where p.TermEnd is null
--5 In 1845, the Whig party changed its name to the 'Whig Freedom' Party. Fix any presidents' data that has been affected by this change.
-- SM Tip: Use TermEnd to include serving president.
UPDATE p 
set Party = 'Whig Freedom'
--SELECT * 
from president p 
where p.Party = 'Whig'
and p.TermStart >= 1845

