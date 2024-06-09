
declare @id int

select top 1 @id = r.recipeId from Recipe r 

--select @id

exec RecipeGet @recipeId = @id