-- SM Excellent! See comments, fix and resubmit.
/*
1.
The US Gov has prohibited certain words (listed below) from being used in political party names. 
Those may not even be camouflaged as part of another word.
Using a CTE insert the literal values below as new parties but omit the 'records' that contain prohibited words.

Prohibited words:

Hate
War
Kill
*/
-- SM You need to join to color table and get the color id
use recordkeeperDb 
go 
;
with x as(
    select PartyName  = 'Flower Power', YearBegan = 1970, Color = 'Violet'
    union select 'Love Powar', 1971, 'Green'
    union select 'Disco', 1980, 'White'
    union select 'Talent and Skill', 1990, 'Red'
    union select 'Rock and Roll', 1980, 'Pink'
    union select 'Phosphate Pros', 2022, null
)
insert Party(ColorId, PartyName, YearBegan)
select c.colorId, x.PartyName, x.YearBegan
from x 
left join colors c 
on x.color = c.color 
where x.PartyName not like '%hate%'
and x.PartyName not like '%war%'
and x.partyname not like '%kill%'



*/

/*
--2 Show all presidents where their age at term start is lower than the average age term start for their party. 
    Show the party name, average age at term start for the party, president number, last name, and age at term start.
*/
;
with x as(
    select AverageAgeAtTermStart = avg(p.AgeAtTermStart), pt.partyname
    from president p 
    join party pt 
    on p.partyId = pt.partyId 
    group by pt.partyname
)
select pt.partyname, x.AverageAgeAtTermStart, p.Num, p.lastname, p.AgeAtTermStart 
from x 
join party pt 
on  x.partyName = pt.partyname
join president p 
on p.partyId = pt.PartyId 
where p.AgeAtTermStart < x.AverageAgeAtTermStart 
--3. Set the color of the party with the most presidents to Gold
-- SM Tip: Should really update the id to gold.
with x as(
    select top 1 NumPresidents = count(*), pt.PartyName
    from party pt 
    join president p 
    on pt.partyId = p.partyId 
    group by pt.PartyName
    order by  NumPresidents desc
)
update pt 
set colorId = 38 
from party pt 
join colors c 
on c.ColorId = pt.ColorId 
join x 
on pt.PartyName = x.partyname 


--4 Delete the executive orders of the party with the least presidential executive orders
-- SM -50% This doesn't delete anything.
with x as (
    select top 1 NumOrders = count(*), pt.PartyName
    from president p 
    left join party pt  
    on pt.partyId = p.partyId
    join orders o
    on p.PresidentId = o.PresidentId
    group by pt.PartyName
    order by NumOrders
)
delete o 
from x
join party pt 
on x.PartyName = pt.PartyName 
join president p 
on p.PartyId = pt.PartyId 
join orders o 
on o.presidentId = p.presidentId 



