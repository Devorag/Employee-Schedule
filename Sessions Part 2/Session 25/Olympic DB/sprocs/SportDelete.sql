create or alter procedure dbo.SportDelete(
	@SportId int = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @SportId = isnull(@SportId,0)

	delete Sport where SportId = @SportId

	return @return
end
go
