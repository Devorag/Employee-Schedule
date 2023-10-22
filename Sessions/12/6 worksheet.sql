--1 show number of world records per category, sort by number, then by category
SELECT CountCategory = count(*)
from worldrecord w 
group by w.category
order by CountCategory, w.category
--2 show number of records per category, but only for categories Technology, Speed, Structures, and Transportation, sort by number, then by category
SELECT CountCategory = count(*), w.Category
from worldrecord w 
where w.category in ('Technology', 'Speed', 'Structures', 'Transportation')
group by w.category
order by CountCategory, w.category
--3 show the average, max, min amount per unit of measure
select avg(w.amount), max(w.amount), min(w.amount) 
from worldrecord w 
group by w.unitofmeasure
/*4 
show the number of records, and the average, max, min amount per unit and category of measure, 
sort by category and unit of measure, 
show the columns in this order category: unit of measure, aggregates
*/
select w.unitofmeasure, count(*), avg(w.amount), max(w.amount), min(w.amount) 
from worldrecord w 
group by w.unitofmeasure, w.Category
order by w.Category, w.UnitOfMeasure

--5 same as 4 but only for records measured in metres (any way it is spelled and in any form (meter, centi, squared, etc.))
select w.category, w.unitofmeasure, count(*), avg(w.amount), max(w.amount), min(w.amount) 
from worldrecord w 
where w.UnitOfMeasure like '%met%'
group by w.unitofmeasure, W.Category
order by w.Category, w.UnitOfMeasure
--6 same as number 5 but only those with an average greater than 50
select w.unitofmeasure, count(*), avg(w.amount), max(w.amount), min(w.amount) 
from worldrecord w 
where w.UnitOfMeasure like '%met%'
group by w.unitofmeasure
having avg(w.amount) > 50
order by w.Category, w.UnitOfMeasure
--7 same as number 5 but only those with a min less than 50 or max greater than 100
select w.unitofmeasure, count(*), avg(w.amount), max(w.amount), min(w.amount) 
from worldrecord w 
where w.UnitOfMeasure like '%met%'
group by w.unitofmeasure
having min(w.amount) < 50
or max(w.Amount) > 100
order by w.Category, w.UnitOfMeasure