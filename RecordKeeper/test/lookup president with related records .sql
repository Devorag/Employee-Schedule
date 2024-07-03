use RecordKeeperDB 
go 

declare @presidentid int 

select @presidentid = p.PresidentId from president p where p.num = 39
select 'president', p.presidentId, p.lastname from president p where p.presidentid = @presidentid 
union select 'exec order', e.executiveorderid, e.ordername from executiveorder e where e.presidentid = @presidentid
union select 'presidentmedal', pm.presidentmedalid, m.medalname from presidentmedal pm join medal m on m.medalid = pm.medalid where pm.presidentid = @presidentid 