create or alter procedure dbo.SportSubCategoryUpdate(
	@SportSubCategoryId int  output,
	@SportId int ,
	@SportSubCategoryName varchar (100),
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @SportSubCategoryId = isnull(@SportSubCategoryId,0)
	
	if @SportSubCategoryId = 0
	begin
		insert SportSubCategory(SportId, SportSubCategoryName)
		values(@SportId, @SportSubCategoryName)

		select @SportSubCategoryId= scope_identity()
	end
	else
	begin
		update SportSubCategory
		set
			SportId = @SportId, 
			SportSubCategoryName = @SportSubCategoryName
		where SportSubCategoryId = @SportSubCategoryId
	end
	
	return @return
end
go

