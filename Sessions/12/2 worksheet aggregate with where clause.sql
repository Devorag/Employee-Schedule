--budget

--1 show the count, sum, average, max, min for the Department of Agriculture
select COUNT(*), SUM(b.Millions), AVG(b.Millions), MAX(b.Millions), MIN(b.Millions) from budget b 
from budget b 
where b.Department = 'Department of Agriculture'
--2 show the count, sum, average, max, min for the Department of Agriculture for the year 2000
select COUNT(*), SUM(b.Millions), AVG(b.Millions), MAX(b.Millions), MIN(b.Millions) from budget b 
where b.Department = 'Department of Agriculture'
and b.BudgetYear = 2000