create or alter procedure dbo.CityDelete(
	@CityId int = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @CityId = isnull(@CityId,0)

	delete City where CityId = @CityId

	return @return
end
go
