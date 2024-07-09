use RecordKeeperDB 
go 
create or alter function dbo.PartyDesc(@PartyId int) 
returns varchar(75) 
as 
begin 
	declare @value varchar(75) = ' '
	select @value = concat
	(y.partyname, 
	case when y.colorid is not null then concat(' (', c.colorname, ') ') 
	else ' ' end, ' ', count(p.presidentid), ' Presidents'
	)
	from party y 
	left join color c 
	on c.colorid = y.colorid 
	left join president p 
	on p.partyid = y.partyid
	where y.partyid = @partyid 
	group by y.partyname, y.colorid, c.colorname

	return @value
end
go
select partyDesc = dbo.PartyDesc(y.partyid), * 
from party y