create or alter procedure dbo.CityUpdate(
		@CityId int  output,
		@CountryId int ,
		@CityName varchar (100),
		@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @CityId = isnull(@CityId,0)
	
	if @CityId = 0
	begin
		insert City(CountryId, CityName)
		values(@CountryId, @CityName)

		select @CityId= scope_identity()
	end
	else
	begin
		update City
		set
			CountryId = @CountryId, 
			CityName = @CityName
		where CityId = @CityId
	end
	
	return @return
end
go
