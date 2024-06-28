
use RecordKeeperDB 
go 

declare @presidentId int 

select top 1 @presidentid = p.presidentid 
from president p 
left join executiveorder e 
on e.presidentid = p.presidentid 
left join presidentmedal pm 
on pm.presidentid = p.presidentid 
where e.executiveorderid is null 
and pm.presidentmedalid is null 
order by p.presidentid