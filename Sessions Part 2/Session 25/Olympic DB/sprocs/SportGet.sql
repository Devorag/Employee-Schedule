create or alter procedure dbo.SportGet(
	@SportId int = 0,
	@All bit = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @All = isnull(@All,0), @SportId = isnull(@SportId,0)

	select s.SportId, s.SportName
	from Sport s
	where SportId = @SportId
	or @All = 1
	
	return @return
end
go
