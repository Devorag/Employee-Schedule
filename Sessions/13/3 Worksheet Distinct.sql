-- WorldRecord
--1 show unique list of Categories from the World Record table, sorted alphabetically
SELECT DISTINCT w.category 
from worldrecord w 
order by w.category
--2 show unique list of Countries from the World Record table, sorted from Z-A
SELECT distinct w.country 
from worldrecord w 
order by w.country desc
--3 show unique list of Year Achieved with their Unit Of Measure from the World Record table, order by Year Achieved and then Unit Of Measure
select distinct w.yearachieved , w.UnitOfMeasure
from WorldRecord w 
ORDER by w.YearAchieved, w.UnitOfMeasure
--4 show the ten earliest years in which World Records were achieved, ordered earliest to latest
SELECT distinct top 10 w.YearAchieved 
from worldrecord w 
order by w.yearachieved 