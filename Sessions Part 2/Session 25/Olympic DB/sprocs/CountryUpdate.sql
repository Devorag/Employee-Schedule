create or alter procedure dbo.CountryUpdate(
	@CountryId int  output,
	@CountryName varchar (100),
	@Message varchar(500) = ''  output
	)
as
begin
	declare @return int = 0

	select @CountryId = isnull(@CountryId,0)
	
	if @CountryId = 0
	begin
		insert Country(CountryName)
		values(@CountryName)

		select @CountryId= scope_identity()
	end
	else
	begin
		update Country
		set
			CountryName = @CountryName
		where CountryId = @CountryId
	end
	
	return @return
end
go
