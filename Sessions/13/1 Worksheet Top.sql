-- World Record
--1 show ten WorldRecords from the World Record table 
select top 10 * 
from WorldRecord

--2 show the ten most recent World Records  
select top 10 * 
from worldrecord w 
order by w.yearachieved desc
--3 show the 5 Records with the highest Amounts (Amount Column)
select top 5 * 
from worldrecord w 
order by w.amount desc
--4 show the WorldRecord with the shortest Record Description
select top 1 * 
from worldrecord w 
order by len(w.recorddesc)
--5 show the 3 oldest Chinese records
SELECT top 3 * 
from WorldRecord w 
where w.Country = 'China'
order by w.YearAchieved
--6 delete three Indian world records
DELETE top (3) w 
--SELECT * 
from WorldRecord w 
where w.Country = 'India'
--7 delete five records from the Animal Category
DELETE top (5) * 
--select * 
from worldrecord w 
where w.category = 'animals'
--8 update the country of five American records to say 'United States'
update top(5) w 
set w.Country = 'United States'
--SELECT * 
from WorldRecord w 
where w.Country = 'USA'
--9 Add 'Low Amount - ' to the beginning of the Description for two records with an amount lower than 20 
UPDATE top(2) w
set w.recorddesc = CONCAT('Low Amount - ', RecordDesc)
--SELECT * 
from WorldRecord w 
where w.Amount < 20 