declare @presidentid int 

select top 1 @presidentid = p.PresidentId
from president p 
join ExecutiveOrder e
on e.presidentid = p.presidentid 
order by p.PresidentId


select * from president p where p.PresidentId = @presidentid 

exec PresidentDelete @presidentid = @presidentid

select * from president p where p.PresidentId = @presidentid 