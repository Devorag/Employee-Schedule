use RecordKeeperDB 
go 

create or alter function dbo.IsPresidentDeleteAllowed(@PresidentId int )
returns varchar(60) 

as 
begin 
	declare @value varchar (60) = ' '
	if exists (select * from executiveorder e where e.presidentid = @presidentid and e.upheldbycourt = 1) 
	begin
		select @value = 'Cannot delete president that has upheld executive orders'
	end 
	return @value
end
go
select dbo.IsPresidentDeleteAllowed(p.presidentid), e.executiveorderid, e.upheldbycourt, * 
from president p 
left join executiveorder e 
on e.presidentid = p.presidentid 