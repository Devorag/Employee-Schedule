-- SM Excellent! See comments, fix and resubmit.

--Reports: For all reports never show null, rather show blank or 0 depending on data type
--1) Show all parties sorted in the descending order of amount of members elected to President. Include those with no presidents. Show party name, color and president count. 
-- SM -20% You should also return parties with no color. And don't show null.
use recordkeeperDB 
go
select pt.partyname, Color = ISNULL(c.color, ''), NumPresidents = count(p.PresidentId)
from party pt 
left join colors c 
on c.colorId = pt.colorId 
left join president p 
on pt.PartyId = p.PartyId 
group by pt.PartyName, c.color
order  by NumPresidents
--2) Show all Presidents (Number, First name, Last name) and their party's color, sort by number
select p.num, p.FirstName, p.LastName, Color = isnull(c.color, '')
from president p 
left join party pt 
on p.partyId = pt.PartyId  
left join colors c  
on pt.ColorId = c.ColorId  
order by p.num

--3) Show the parties that have not had any members elected as President
select pt.PartyName
from party pt 
left join president p 
on pt.PartyId = p.PartyId 
where p.PresidentId is null 
--4) Breaking News!! Someone from the Prohibition Party was just elected president! Insert the new president (you make up the info, do not include in  "data president" file)
-- SM do not include in  "data president" file
insert president(PartyId, Num, FirstName, LastName, dateBorn, DateDied, TermStart, TermEnd)
select pt.partyId, 47, 'Max', 'Lublin', '1960-01-01', null, 2024, null from party pt where pt.PartyName = 'Prohibition' 
/*
5) The Times of CPU hired an investigative journalist to research any correlation between a Party's color and the amount of Executive Orders issued. 
    The investigator needs the following information: Show a list of colors and number of executive orders for each color, sort by highest number of executive orders to the lowest
*/

select c.Color, Num = count(o.orderId)
from party pt 
left join colors c  
on c.ColorId = pt.ColorId 
join president p 
on pt.PartyId = p.PartyId 
left join orders o 
on p.PresidentId = o.PresidentId 
group by c.Color 
order by Num desc


