create or alter procedure dbo.MedalUpdate(
	@MedalId int  output,
	@MedalName varchar (100),
	@Message varchar(500) = ''  output
	)
as
begin
	declare @return int = 0

	select @MedalId = isnull(@MedalId,0)

	if @MedalId = 0
	begin
		insert Medal(MedalName)
		values(@MedalName)

		select @MedalId= scope_identity()
	end
	else
	begin
		update Medal
		set
			MedalName = @MedalName
		where MedalId = @MedalId
	end

	return @return
end
go

