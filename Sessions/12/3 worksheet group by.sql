--1 show the total budget per department
SELECT b.Department, sum(b.millions)
from budget b 
group by b.Department
order by b.Department
--2 show the total budget per department for the years 1990s, sort by department
SELECT b.Department, sum(b.millions)
from budget b 
where b.budgetyear between 1990 and 1999
group by b.Department
order by b.department
--3 show the average budget per year for departments that have the word department in their name, sort by year
SELECT b.budgetyear, avg(b.Millions)
from budget b 
where b.department like '%departmenrt%'
group by b.BudgetYear
order by b.BudgetYear
--4 show the number of world records per category and country
SELECT count(*),w.Category, w.country
from WorldRecord w 
group by w.Category, w.Country
ordre by w.category, w.country
