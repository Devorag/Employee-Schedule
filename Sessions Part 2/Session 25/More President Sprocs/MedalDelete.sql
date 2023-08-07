create or alter procedure dbo.MedalDelete(
	@MedalId int = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @MedalId = isnull(@MedalId,0)

	delete Medal where MedalId = @MedalId

	return @return
end
go
