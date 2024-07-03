use RecordKeeperDB 
go 

set nocount on 

declare @presidentId int 

select top 1 @presidentid = p.presidentid
from President p 
join executiveorder e 
on e.presidentId = p.presidentid 
join presidentmedal pm 
on pm.presidentId = p.presidentId 
order by p.PresidentId


select 'president', p.presidentId, p.lastname from president p where p.presidentid = @presidentid 
union select 'exec order', e.executiveorderid, e.ordername from executiveorder e where e.presidentid = @presidentid
union select 'presidentmedal', pm.presidentmedalid, m.medalname from presidentmedal pm join medal m on m.medalid = pm.medalid where pm.presidentid = @presidentid 

exec PresidentDelete @presidentid = @presidentid


select 'president', p.presidentId, concat(p.num, ' ', p.lastname) from president p where p.presidentid = @presidentid 
union select 'exec order', e.executiveorderid, e.ordername from executiveorder e where e.presidentid = @presidentid
union select 'presidentmedal', pm.presidentmedalid, m.medalname from presidentmedal pm join medal m on m.medalid = pm.medalid where pm.presidentid = @presidentid 



