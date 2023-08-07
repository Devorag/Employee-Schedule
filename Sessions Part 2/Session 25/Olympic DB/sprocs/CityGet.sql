create or alter procedure dbo.CityGet(
	@CityId int = 0,
	@All bit = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @All = isnull(@All,0), @CityId = isnull(@CityId,0)

	select c.CityId, c.CountryId, c.CityName
	from City c
	where CityId = @CityId
	or @All = 1
	order by c.CityName
	
	return @return
end
go
