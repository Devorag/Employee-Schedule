-- Invention
--1 show unique list of Inventors' First Names sorted from Z-A
SELECT distinct i.firstname 
from invention i 
order by i.firstname
--2 show unique list of Countries from the Invention table, sorted alphabetically
select DISTINCT i.Country
from invention i 
order by i.country
--3 show unique list of YearInvented with their Country, sort by by those columns 
select DISTINCT i.YearInvented, i.country
from invention i 
order by i.YearInvented,i.country
--4 show a unique list of the age of inventors when they invented their invention, ordered oldest to youngest
SELECT DISTINCT Age = i.YearInvented - i.yearborn 
from invention i 
order by age desc
--5 show the top five countries from Invention table, ordered alphabetically
select distinct top 5 i.country
from invention i  
order by i.country
-- Budget
--6 show the first five years in the budget table, only display the year column
select distinct top 5 b.BudgetYear
from budget b 
order by b.BudgetYear
--7 show the first five departments ordered alphabetically
SELECT distinct top 5 b.department 
from budget b 
order by b.Department
--8 show a unique list of departments containing the word Administration in their name
SELECT distinct b.department 
from budget b 
where b.Department like '%administration%'
