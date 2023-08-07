create or alter procedure dbo.CountryGet(
	@CountryId int = 0,
	@All bit = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @All = isnull(@All,0), @CountryId = isnull(@CountryId,0)

	select c.CountryId, c.CountryName
	from Country c
	where CountryId = @CountryId
	or @All = 1
	order by c.CountryName

	return @return
end
go
--exec CountryGet @All  = 1