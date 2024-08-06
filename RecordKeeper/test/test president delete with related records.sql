declare @presidentid int 

select top 1 @presidentid = p.PresidentId
from president p 
left join ExecutiveOrder e
on e.presidentid = p.presidentid 
left join PresidentMedal pm 
on pm.PresidentId = p.PresidentId
where e.ExecutiveOrderId is null 
and pm.PresidentMedalId is null 
order by p.PresidentId

select * from president p where p.PresidentId = @presidentid 

exec PresidentDelete @presidentid = @presidentid

select * from president p where p.PresidentId = @presidentid 