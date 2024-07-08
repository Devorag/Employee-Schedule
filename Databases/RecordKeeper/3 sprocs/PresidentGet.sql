use RecordKeeperDb
go

create or alter procedure dbo.PresidentGet( 
	@PresidentId int = 0,
	@LastName varchar(100) = '', 
	@All bit = 0)
as 
begin 
	select p.PresidentId, p.PartyId, p.FirstName, p.LastName, p.DateBorn, p.DateDied, p.TermStart, p.TermEnd 
	from President p 
	where p.PresidentId = @PresidentId 
	or @All = 1 
	or (@LastName <> '' and p.LastName like '%' + @LastName + '%')
	order by p.num 
end 
go  

exec PresidentGet 

exec PresidentGet @LastName = '' 

exec PresidentGet @LastName = null 

exec PresidentGet @LastName = 'm'

exec PresidentGet @All = 1 

declare @PresidentId int 
select top 1 @PresidentId = p.PresidentId from president p 
exec PresidentGet @PresidentID = @PresidentId