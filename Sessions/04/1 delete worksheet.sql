--WorldRecord, re-insert rows after each delete
--1. Delete all rows in the table, using the shorthand syntax
delete WorldRecord

select * from WorldRecord
--2. Delete all rows using the longhand syntax
delete from worldrecord

delete w from WorldRecord 
--3. Delete all where record is concerning a dog (the kind that barks). First do as select, then convert to delete
delete w 
SELECT * 
from WorldRecord w 
where w.RecordDesc like '%dog%' 
and w.Category = 'animal'

--4 Delete all that were achieved before 2005 or after 2014, and were from USA 
delete w 
--SELECT *
from WorldRecord w 
where w.YearAchieved < 2005 or w.YearAchieved > 2014
and w.Country = 'USA'
