create or alter procedure dbo.SeasonGet(
	@SeasonId int = 0,
	@All bit = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @All = isnull(@All,0), @SeasonId = isnull(@SeasonId,0)

	select s.SeasonId, s.SeasonName
	from Season s
	where SeasonId = @SeasonId
	or @All = 1
	order by s.SeasonName
	
	return @return
end
go