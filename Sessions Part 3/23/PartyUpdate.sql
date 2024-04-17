create or alter procedure dbo.PartyUpdate(
@PartyId int  output,
@PartyName varchar (35),
@YearStart smallint ,
@ColorId int,
@PartyDesc varchar(500) = '',
@Message varchar(500) = '' output
)
as
begin
	select @PartyId = isnull(@PartyId,0), @ColorId = nullif(@ColorId,0), @PartyDesc = ISNULL(@PartyDesc,'')

	if @PartyId = 0
	begin
		insert party(PartyName, YearStart, ColorId, PartyDesc)
		values(@PartyName, @YearStart, @ColorId, @PartyDesc)
		
		select @PartyId = SCOPE_IDENTITY()
	end
	else
	begin
		update party
		set
		PartyName = @PartyName, 
		YearStart = @YearStart, 
		ColorId = @ColorId,
		PartyDesc = @PartyDesc
		where PartyId = @PartyId
	end

end
GO
grant execute on PartyUpdate to approle

