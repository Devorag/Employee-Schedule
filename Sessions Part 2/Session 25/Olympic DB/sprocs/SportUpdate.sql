create or alter procedure dbo.SportUpdate(
	@SportId int  output,
	@SportName varchar (100),
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @SportId = isnull(@SportId,0)
	
	if @SportId = 0
	begin
		insert Sport(SportName)
		values(@SportName)

		select @SportId= scope_identity()
	end
	else
	begin
		update Sport
		set
			SportName = @SportName
		where SportId = @SportId
	end
	
	return @return
end
go

