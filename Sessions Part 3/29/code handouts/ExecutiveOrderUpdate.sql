create or alter procedure dbo.ExecutiveOrderUpdate(
    @ExecutiveOrderId int output,
    @PresidentId int,
    @OrderNumber int,
    @PageNum int,
    @YearIssued int,
    @OrderName varchar(1000),
    @UpheldByCourt bit,
    @Message varchar(1000) = '' output
)
as
begin
    declare @return int = 0

    if @ExecutiveOrderId <= 0
    begin
        insert into ExecutiveOrder (PresidentId, OrderNumber, PageNum, YearIssued, OrderName, UpheldByCourt)
        values (@PresidentId, @OrderNumber, @PageNum, @YearIssued, @OrderName, @UpheldByCourt)
        
        set @ExecutiveOrderId = scope_identity()
    end
    else
    begin
        update ExecutiveOrder
        set PresidentId = @PresidentId,
            OrderNumber = @OrderNumber,
            PageNum = @PageNum,
            YearIssued = @YearIssued,
            OrderName = @OrderName,
            UpheldByCourt = @UpheldByCourt
        where ExecutiveOrderId = @ExecutiveOrderId
    end

    return @return
end
GO

grant execute on ExecutiveOrderUpdate to approle
