create or alter procedure dbo.OlympicMedalDelete(
	@OlympicMedalId int = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @OlympicMedalId = isnull(@OlympicMedalId,0)

	delete OlympicMedal where OlympicMedalId = @OlympicMedalId

	return @return
end
go
