use RecordKeeperDB 
go 

create or alter function dbo.PresidentDesc(@PresidentId int) 
returns varchar(250) 
as 
begin 
	declare @value varchar(250) = '' 

	select @value = concat(p.num, ' ', p.lastname, ', ', p.FirstName, ' (', y.PartyName, ')')
	from president p 
	join party y 
	on y.PartyId = p.PartyId
	where p.presidentid = @presidentid 

	return @value
end 
go 
select dbo.PresidentDesc(p.PresidentId), p.* 
from president p 