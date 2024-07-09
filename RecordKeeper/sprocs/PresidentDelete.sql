create or alter procedure dbo.PresidentDelete(
	@PresidentId int, 
	@Message varchar(500) = ' ' output
)
as 
begin 
	declare @return int = 0, @deleteAllowed varchar(60) = ' '
	select @deleteAllowed = isnull(dbo.isPresidentDeleteAllowed(@PresidentId), '')
	if @deleteAllowed <> ' '
	begin	
		select @return = 1, @Message = @deleteAllowed
		goto finished
	end


	begin try 
		begin tran 
		delete ExecutiveOrder where Presidentid = @PresidentId
		delete President where PresidentId = @PresidentId 
		commit
	end try 
	begin catch 
		rollback;
		throw 
	end catch 

	finished:
	return @return
end 
go 