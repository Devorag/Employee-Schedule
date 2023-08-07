create or alter procedure dbo.SportSubCategoryDelete(
	@SportSubCategoryId int = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @SportSubCategoryId = isnull(@SportSubCategoryId,0)

	delete SportSubCategory where SportSubCategoryId = @SportSubCategoryId

	return @return
end
go
