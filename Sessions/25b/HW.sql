-- SM Excellent! 80% See comment, fix and resubmit.
--1 All presidents are participating in the Olympics! In all sports! Show me a list of presidents (Number, Last Name), and each sport in the medalist table. Sort by president number.
use recordkeeperDB 
go 
;
with x as (
    select distinct m.sport 
    from medalist m 
)
select p.num, p.LastName, x.sport 
from x 
cross join president p 
order by p.num 
/*
--2 None of the presidents won any olympic medals. 
The Democrats want to try their hands at world records. They were advised to take it slow and try one category of world records first. 
You pick the category and show me a list of Democratic presidents (Num, Last Name) with a list of world records (just the record name) from your chosen category. 
Sort by record name, and then by president number
*/
-- SM I don't get anything... Rerun the data file and you'll also not get anything.
select p.num, p.LastName, w.RecordName 
from worldrecord w 
cross join president p 
join party pt 
on p.PartyId = pt.PartyId 
where pt.partyname = 'Democratic' 
and w.Category = 'Animals'
order by w.recordname, p.num 