--1 show the number of budget rows in the table
select count(*) from budget

--2 show the sum total of all budget records
SELECT sum(b.millions) from budget b
--3 show the average, min, and max budgets for all rows
select AvgBudget = avg(b.millions), MinBudget = min(b.millions), MaxBudget = MAX(b.millions) from budget b 