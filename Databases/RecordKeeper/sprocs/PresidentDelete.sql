use RecordKeeperDB 
go 

create or alter procedure dbo.PresidentDelete (
	@PresidentId int 
)
as 
begin 
	if exists (select * from executiveorder e where e.presidentid = @PresidentId and e.UpheldByCourt = 1)
	begin 
		goto finished 
	end
	begin try 
		begin tran 
		delete ExecutiveOrder where presidentId = @PresidentId 
		delete President where PresidentId = @PresidentId
	end try 
	begin catch 
		rollback;
		throw 
	end catch 
	finished:
end 
go 