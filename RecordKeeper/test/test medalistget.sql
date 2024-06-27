declare @id  int 

select top 1 @id = m.MedalistId from medalist m 

select @id

exec MedalistGet @MedalistId = @id