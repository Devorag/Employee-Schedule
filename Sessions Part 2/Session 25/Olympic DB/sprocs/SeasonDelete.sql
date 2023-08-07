create or alter procedure dbo.SeasonDelete(
	@SeasonId int = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @SeasonId = isnull(@SeasonId,0)

	delete Season where SeasonId = @SeasonId

	return @return
end
go
