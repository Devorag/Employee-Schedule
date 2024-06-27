create or alter procedure dbo.PartyGet(@PartyId int = 0, @PartyName varchar(35) = '', @All bit = 0) 
as
begin
	select @PartyName = nullif(@PartyName, '')

	select pt.ColorId, pt.PartyName, pt.YearBegan 
	from Party pt 
	where pt.PartyId = @PartyId
	or @All = 1 
	or pt.PartyName like '%' + @PartyName + '%'
	order by pt.PartyName
end
go

exec PartyGet 

exec PartyGet @PartyName = '' -- no results

exec PartyGet @PartyName = 'u'

exec PartyGet @All = 1 

declare @PartyId int 

select top 1 @PartyId = pt.PartyId from party pt 

exec PartyGet @PartyId = @PartyId 




