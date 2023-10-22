--1 show the total budget per department where the total is greater than 5,000,000, sort by total budget from high to low
SELECT b.department, sum(b.millions) 
from budget b 
group by b.Department
having sum(b.millions) > 5000000
order by sum(b.millions) desc
/*
2 show the total budget per department where the total is greater than 5,000,000 and the department has the word department in its name
sort by total budget from high to low
*/
SELECT * 
from budget b 
where b.Department like '%department%'
group by b.Department
having sum(b.Millions) > 5000000
order by sum(b.millions) desc
