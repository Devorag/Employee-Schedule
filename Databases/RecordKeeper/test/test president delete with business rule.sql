set nocount on
declare @presidentid int 

select top 1 @presidentid = p.presidentid 
from president p 
join executiveorder e 
on e.presidentid = p.presidentid 
join presidentmedal pm 
on pm.presidentid = p.presidentid is null 
and e.upheldbycourt = 1 
order by p.presidentid 

select 'president', p.presidentid, p.lastname from president p where p.PresidentId = @presidentid 
 union select 'exec order',e.executiveorderid, e.ordername from executiveorder e where e.presidentid = @presidentid 
 union select 'president medal', pm.presidentmedalid, m.medalname from Presidentmedal pm join medal m on m.MedalId = pm.medalid 

 exec PresidentDelete @PresidentId = @presidentid

 select 'president', p.presidentid, concat(p.num, ' ', p.lastname) from president p where p.PresidentId = @presidentid 
 union select 'exec order',e.executiveorderid, e.ordername from executiveorder e where e.presidentid = @presidentid 
 union select 'president medal', pm.presidentmedalid, m.medalname from Presidentmedal pm join medal m on m.MedalId = pm.medalid 