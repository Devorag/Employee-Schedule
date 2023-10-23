-- SM Excellent! 94% See comments, fix and resubmit.
/* select * from states s
1. We need to analyze current US state population based on the century that each state was admitted to the union.
Show the number of states and the average, max, and min populations per century of admittance. Show in three reports, break it up by the century, 1700s, 1800s, 1900s. 
The columns should be the number of states, year range (1700s, 1800s,1900s) and then the average, min, max
*/
-- SM Remove the "group by" from all.
select Num = count(*), YearRange = '1700''s', AvgPop = AVG(s.popvalue), MinPop = min(s.popvalue), MaxPop = max(s.popvalue)
from states s  
where year(s.admitted) BETWEEN 1700 and 1799
group by s.admitted

select Num = count(*), YearRange = '1800''s', AvgPop = AVG(s.popvalue), MinPop = min(s.popvalue), MaxPop = max(s.popvalue)
from states s  
where year(s.admitted) BETWEEN 1800 and 1899
group by s.admitted

select Num = count(*), YearRange = '1900''s', AvgPop = AVG(s.popvalue), MinPop = min(s.popvalue), MaxPop = max(s.popvalue)
from states s  
where year(s.admitted) BETWEEN 1900 and 1999
group by s.admitted
/*
2. We are studying the impact of the presidency and his political affiliation on the longevity of the president. 
a) Show the average life span of non-living presidents per party. Sort by average lifespan and then by party.
b) Same as (a) but also break it up per the number of years served
c) Same as (b) but only show those with an average life span of less than 70
*/
select AvgLifeSpan = avg(year(p.datedied) - year(p.dateborn)), p.party
from president p 
where p.datedied is not null
group by p.Party
order by AvgLifeSpan, p.Party

select AvgLifeSpan = avg(year(p.datedied) - year(p.dateborn)), p.party, NumYearsServed = p.TermEnd - p.TermStart
from president p 
where p.datedied is not null
group by p.Party, p.TermEnd - p.TermStart
order by AvgLifeSpan, p.Party

select AvgLifeSpan = avg(year(p.datedied) - year(p.dateborn)), p.party, NumYearsServed = p.TermEnd - p.TermStart
from president p 
where p.datedied is not null
group by p.Party, p.TermEnd - p.TermStart
having avg(year(p.datedied) - year(p.dateborn)) < 70
order by AvgLifeSpan, p.Party

/*
3. US Gov is trying to cut costs. The economy changed after the stock market crash of 1987.
We need to produce list of departments with their max, average, and minimum budgets after 1987.
We only need to look at those with max or average above 10000 (million). 
Do not include Department of Homeland Security and Department of Veterans Affairs, as they are not subject to budget cuts.
Sort by the biggest spenders on top.
*/
-- SM -50% Show department. You're not excluding specific departments, see data. I would say those top on avg are biggest spenders.
SELECT MaxBudget = Max(b.Millions), AvgBudget = AVG(b.Millions), MinBudget = MIN(b.Millions)
from budget b 
where b.BudgetYear > 1987
and b.Department not in ('Homeland Security', 'Veterans Affairs')
group by b.Department
having Max(b.Millions) > 10000
or AVG(b.Millions) > 10000
order by MaxBudget desc
 
/*
4. The International Monetary Fund wants to stimulate the economy with an advertising campaign highlighting countries with young innovators.
Show the number of inventors as stars (*) per country that were under 35 at the time of their invention, exclude countries that have only one inventor. 
Sort by number of inventors from high to low, and then by country
*/
SELECT NumOfInventors = REPLICATE ('*', count(*)), i.country
from Invention i 
where i.YearInvented - i.YearBorn < 35
group by i.Country
having count(*) > 1  
order by NumofInventors desc, i.country