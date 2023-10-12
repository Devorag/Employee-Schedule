--re run the data before doing each question

--1 John F Kennedy was a hoax, delete him from the table and reduce the number for all subsequent presidents (requires two statements)
delete p 
--SELECT * 
from president p 
where p.LastName = 'Kennedy'

update p 
set num = p.num - 1 
--select p.num, * 
from president p 
where p.num > 35

--2 Add "Short Term" to all republican presidents' first names for those who served less than 1 term (less than 4 years) after 1900.
update p 
set FirstName = p.FirstName + ' Short Term'
--SELECT * 
from president p 
where p.Party = 'Republican'
and 
(
    p.TermEnd - p.TermStart < 4
    and p.TermStart > 1900
)

--3 Breaking News: Robert Wilson really won the last election. End the term of the current president and enter Robert Wilson as the next president.
UPDATE p 
set TermEnd = 2023
--SELECT * 
from president p 
where p.Num = 46

insert president( p.num, p.firstname, p.lastname, p.party, p.yearborn, p.termstart)
select 47, 'Robert', 'Wilson', 'Democrat', 1975, 2023

--4 Zoom to the future! Add grandchildren for each of the past presidents. They all have the same last name, and first name + Jr. Add to president number and all 'Years' and 'Terms' columns so that all data is (or at least could be) correct.
insert president( p.num, p.firstname, p.lastname, p.party, p.yearborn, p.yeardied, p.termstart, p.TermEnd)
SELECT num = p.num + 46, firstname = p.firstname + ' Jr', p.lastname, p.Party, yearborn = p.YearBorn + 50, yeardied = p.yeardied + 50, termstart = p.termstart + 234, TermEnd = p.TermEnd + 234
from president p 

--5 Congratulations! You were elected for the next term. Add this record to the president table. Choose your party name and set 5 existing presidents to your party. 
insert president( p.num, p.firstname, p.lastname, p.party, p.yearborn, p.termstart)
select 47, 'Devora', 'Goldenberg', 'Patriot', 2004, 2023 

update p 
set party = 'Patriot'
--SELECT * 
from president p 
where p.num in (8,16,22,31,40)
