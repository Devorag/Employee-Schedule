create or alter procedure dbo.CityGet(
	@CityId int = 0,
	@All bit = 0,
	@IncludeBlank bit = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @All = isnull(@All,0), @CityId = isnull(@CityId,0), @IncludeBlank = ISNULL(@IncludeBlank,0)

	select c.CityId, c.CountryId, c.CityName, CityDesc = concat(c.cityname, ', ', o.CountryName)
	from City c
	join Country o 
	on c.CountryId = o.CountryId
	where CityId = @CityId
	or @All = 1
	union select 0, 0, '', ''
	where @IncludeBlank = 1
	order by c.CityName
	
	return @return
end
go

--exec CityGet @IncludeBlank = 1, @All = 1
