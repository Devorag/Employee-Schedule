create or alter procedure dbo.PresidentMedalUpdate(
	@PresidentMedalId int  output,
	@PresidentId int ,
	@MedalId int, 
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @PresidentMedalId = isnull(@PresidentMedalId,0)

	if @PresidentMedalId <= 0
	begin
		insert PresidentMedal(PresidentId, MedalId)
		values(@PresidentId, @MedalId)

		select @PresidentMedalId= scope_identity()
	end
	else
	begin
		update PresidentMedal
		set
			PresidentId = @PresidentId, 
			MedalId = @MedalId
		where PresidentMedalId = @PresidentMedalId
	end

	return @return
end
go

