create or alter procedure dbo.PresidentMedalDelete(
	@PresidentMedalId int = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @PresidentMedalId = isnull(@PresidentMedalId,0)

	delete PresidentMedal where PresidentMedalId = @PresidentMedalId

	return @return
end
go
