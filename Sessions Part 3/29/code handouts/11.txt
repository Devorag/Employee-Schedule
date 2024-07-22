create or alter procedure dbo.ExecutiveOrderDelete(
    @ExecutiveOrderId int,
    @Message varchar(1000) = '' output
)
as
begin
    declare @return int = 0

    delete from ExecutiveOrder where ExecutiveOrderId = @ExecutiveOrderId

    return @return
end
GO

grant execute on ExecutiveOrderDelete to approle
