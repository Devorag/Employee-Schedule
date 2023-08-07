create or alter procedure dbo.OlympicMedalUpdate(
	@OlympicMedalId int  output,
	@OlympicMedalName varchar (10),
	@OlympicMedalSequence int ,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @OlympicMedalId = isnull(@OlympicMedalId,0)
	
	if @OlympicMedalId = 0
	begin
		insert OlympicMedal(OlympicMedalName, OlympicMedalSequence)
		values(@OlympicMedalName, @OlympicMedalSequence)

		select @OlympicMedalId= scope_identity()
	end
	else
	begin
		update OlympicMedal
		set
			OlympicMedalName = @OlympicMedalName, 
			OlympicMedalSequence = @OlympicMedalSequence
		where OlympicMedalId = @OlympicMedalId
	end
	
	return @return
end
go
