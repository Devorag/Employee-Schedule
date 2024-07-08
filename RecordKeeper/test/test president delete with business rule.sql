use RecordKeeperDB 
go 

set nocount on 

declare @presidentId int 

select top 1 @presidentid = p.presidentid
from President p 
join executiveorder e 
on e.presidentId = p.presidentid 
left join presidentmedal pm 
on pm.presidentId = p.presidentId 
where pm.PresidentId is null 
and e.UpheldByCourt = 1
order by p.PresidentId


select 'president', p.presidentId, p.lastname from president p where p.presidentid = @presidentid 
union select 'exec order', e.executiveorderid, e.ordername from executiveorder e where e.presidentid = @presidentid
union select 'presidentmedal', pm.presidentmedalid, m.medalname from presidentmedal pm join medal m on m.medalid = pm.medalid where pm.presidentid = @presidentid 

declare @return int, @message varchar(500)
exec @return = PresidentDelete @presidentid = @presidentid, @Message = @message output 

select @return, @message 

select 'president', p.presidentId, concat(p.num, ' ', p.lastname) from president p where p.presidentid = @presidentid 
union select 'exec order', e.executiveorderid, e.ordername from executiveorder e where e.presidentid = @presidentid
union select 'presidentmedal', pm.presidentmedalid, m.medalname from presidentmedal pm join medal m on m.medalid = pm.medalid where pm.presidentid = @presidentid 



