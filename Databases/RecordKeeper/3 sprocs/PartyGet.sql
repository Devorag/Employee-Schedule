create or alter procedure dbo.PartyGet(@PartyId int = 0, @PartyName varchar(35) = '', @All bit = 0, @IncludeBlank bit = 0) 
as
begin
	select @PartyName = nullif(@PartyName, ''), @IncludeBlank = ISNULL(@IncludeBlank,0)

	select pt.PartyId, pt.PartyName, pt.YearStart, pt.ColorId, PartyColor = c.colorname
	from Party pt 
	left join color c 
	on c.colorid = pt.colorid
	where pt.PartyId = @PartyId
	or @All = 1 
	or pt.PartyName like '%' + @PartyName + '%'
	union select 0, '', 0, 0, ' '
	where @IncludeBlank = 1
	order by pt.PartyNam
end
go

exec PartyGet 

exec PartyGet @PartyName = '' -- no results

exec PartyGet @PartyName = 'u'

exec PartyGet @All = 1 

declare @PartyId int 

select top 1 @PartyId = pt.PartyId from party pt 

exec PartyGet @PartyId = @PartyId 




