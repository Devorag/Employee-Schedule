-- medalist 

-- 1. Show a new column called Stars. For gold medalists show five stars, for silver show four stars and for bronze show three stars.
select Stars = 
case
when m.medal = 'gold' then '*****'
when m.medal = 'silver' then '****'
when m.medal = 'bronze' then '***'
end,* 
from medalist m 
order by m.medal
/* 2. The Olympic Committee has decided to assign certain medalists a color, which is decided based on a few specifications:
    If the Olympic location was France and the sport was Athletics or Figure Skating the color is red.
    If the location was Italy and the sport was Athletics or Canoeing then the color is orange. 
    If the location was Japan and was during the Winter and the sport was Cross-Country Skiing then the color is yellow.
    If the location was Greece and was during the summer and the sport was cycling then the color is Blue. 
    All other medalists will be green.
*/
select Color = 
case 
when m.olympiclocation = 'France' and m.sport in('Athletics', 'Figure Skating') then 'red'
when m.olympiclocation = 'Italy' and m.sport in('Athletics', 'Canoeing') then 'orange'
when m.olympiclocation = 'Japan' and m.Season = 'winter' and m.sport = 'Cross-Country Skiing' then 'yellow'
when m.olympiclocation = 'Greece' and m.Season = 'summer' and m.sport = 'cycling' then 'blue'
else 'green'
end,* 
from medalist m 
/* 3. The Olympic Committee wants a list of all medalists.
      The gold and silver medalists should be sorted by last name (the type of medal does not affect the sort), 
      and all bronze should show below them sorted by last name.
*/
select *
from medalist m 
order by 
case 
when m.medal in ('gold', 'silver') then 1
when m.medal = 'bronze' then 2
end,
m.lastname

/* 4. Someone mistakenly put bad data into the Medalist table, which we must fix now.
      All American medalists under the age of 25 - their medals must be changed to Gold.
      Italian medalists over the age of 30 should be awarded Silver medals.
      French medalists over the age of 35 that performed in Summer games should have their medals changed to bronze.
      Any medalist from Denmark whose last name contains an S should be changed to gold. All other medalists should remain the same.
*/
UPDATE m 
set medal = 
--select medal = 
case
when m.country = 'USA' and m.olympicyear - m.yearborn < 25 then 'gold'
when m.country = 'Italy' and m.olympicyear - m.yearborn > 30 then 'silver'
when m.country = 'France' and m.olympicyear - m.yearborn > 35 and m.season = 'summer' then 'bronze'
when m.country = 'Denmark' and m.lastname like '%s%' then 'gold'
else m.medal
end
from medalist m 

/* 5. 
    Create a new budget for next year, base it on the latest year in the budget table. Adjust the new budget as follows:
    Department of Education - increase by 90%
    Department of Health and Human Services - triple the budget
    Environmental Protection Agency - cut it in half
    Department of the Treasury = 10 million
    All else increase by 20%
*/
update b 
set b.Millions = 
--select NewBudget = 
case 
when b.Department = 'Department of Education' and b.BudgetYear = 2021 then b.Millions * .9
when b.Department = 'Department of Health and Human Services' and b.BudgetYear = 2021 then b.Millions * 3
when b.Department = 'Environmental Protection Agency' and b.BudgetYear = 2021 then b.Millions * .5
when b.Department = 'Department of the Treasury' and b.BudgetYear = 2021 then 10
else b.Millions * 2  
end
from budget b 


