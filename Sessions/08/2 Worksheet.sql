-- For the WorldRecord Table
select * from WorldRecord w 
--1. Someone just broke the record for 'Highest Jump out of a moving airplane'! Unfortunately, we don't know his name, but please insert his record regardless.
insert WorldRecord(Category, RecordName, RecordDesc, FullName, Amount, UnitOfMeasure, YearAchieved, Country)
SELECT 'Transportation', 'Highest Jump out of a moving airplane', 'The highest jump from an airplane while it was in motion', null, 4, 'miles', 2023, 'USA'

--2. Please insert two more records without Amounts to the Speed Category
insert WorldRecord(Category, RecordName, RecordDesc, FullName, UnitOfMeasure, YearAchieved, Country)
SELECT 'Speed', 'Fastest walk', 'Fastest Walk around the lake', 'Fast Lake', 'seconds', 2018, 'France'
union SELECT 'Speed', 'Fastest cartwheel', 'makes a cartwheel the fastest', 'Cart Whell', 'miliseconds', 2020, 'USA'

/*
	3. Show a list of all records where the record breaker's name or the amount is missing. 
	Display the columns: Category, RecordName, FullName, Amount, UnitOfMeasure
*/
SELECT w.Category, w.RecordName, w.FullName, w.Amount, w.UnitOfMeasure 
from WorldRecord w 
where w.FullName is NULL
or w.Amount is null

--4. Add the word 'Nameless' to the Record Description of any record that is missing the Full Name, and then show the rows affected
update w 
set w.RecordDesc = RecordDesc + 'Nameless'
--SELECT * 
from WorldRecord w 
where w.FullName is null

/*
	5. A mistake was made in the database for all records in the Speed Category. All the amounts were entered 5 units more than the correct one.
	Please show these records with a column calculating what the correct amount should be
*/
SELECT NewAmount = w.amount - 5, * 
 from WorldRecord w  
 where w.Category = 'Speed'


--6. Delete all records where the Full Name is missing.
DELETE w 
from WorldRecord w 
where w.FullName is null

