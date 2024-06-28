use RecordKeeperDB 
go 

declare @presidentId int 

select top 1 @presidentid = p.presidentid
from President p 
join executiveorder e 
on e.presidentId = p.presidentid 
order by p.PresidentId

select * from president p where p.presidentid = @presidentid 

exec presidentdelete @presidentid = @presidentid

select * from president p where p.presidentid = @presidentid