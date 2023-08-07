create or alter procedure dbo.CountryDelete(
	@CountryId int = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @CountryId = isnull(@CountryId,0)

	delete Country where CountryId = @CountryId

	return @return
end
go