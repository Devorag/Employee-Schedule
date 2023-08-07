create or alter procedure dbo.SeasonUpdate(
	@SeasonId int  output,
	@SeasonName varchar (20),
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @SeasonId = isnull(@SeasonId,0)
	
	if @SeasonId = 0
	begin
		insert Season(SeasonName)
		values(@SeasonName)

		select @SeasonId= scope_identity()
	end
	else
	begin
		update Season
		set
			SeasonName = @SeasonName
		where SeasonId = @SeasonId
	end
	
	return @return
end
go

