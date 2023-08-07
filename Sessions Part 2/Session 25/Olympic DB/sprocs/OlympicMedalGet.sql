create or alter procedure dbo.OlympicMedalGet(
	@OlympicMedalId int = 0,
	@All bit = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @All = isnull(@All,0), @OlympicMedalId = isnull(@OlympicMedalId,0)

	select o.OlympicMedalId, o.OlympicMedalName, o.OlympicMedalSequence
	from OlympicMedal o
	where OlympicMedalId = @OlympicMedalId
	or @All = 1
	order by o.OlympicMedalSequence
	
	return @return
end
go
