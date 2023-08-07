create or alter procedure dbo.PresidentMedalGet(
	@PresidentMedalId int = 0,
	@All bit = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @All = isnull(@All,0), @PresidentMedalId = isnull(@PresidentMedalId,0)

	select p.PresidentMedalId, p.PresidentId, p.MedalId, p.TimeRecieved
	from PresidentMedal p
	where PresidentMedalId = @PresidentMedalId
	or @All = 1

	return @return
end
go