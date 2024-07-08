use RecordKeeperDB 
go 

declare @tablename varchar(50) = 'president'

select 
	concat('@', c.COLUMN_NAME,  ' ', c.DATA_TYPE, ' ', 
	case when c.CHARACTER_MAXIMUM_LENGTH is null then ' ' else concat('(', c.CHARACTER_MAXIMUM_LENGTH, ')') end, 
	case when c.TABLE_NAME + 'Id' = c.COLUMN_NAME then 'output' else '' end,
 	',')
from INFORMATION_SCHEMA.columns c 
where c.TABLE_NAME = 'President'

declare @insertlist varchar(5000) = ''

select @insertlist = @insertlist  + concat(c.column_name, ', ')
from INFORMATION_SCHEMA.columns c 
where c.TABLE_NAME = 'President'
and c.COLUMN_NAME <> c.TABLE_NAME + 'Id'

select @insertlist = ''

select @insertlist = @insertlist  + concat('@', c.column_name, ', ')
from INFORMATION_SCHEMA.columns c 
where c.TABLE_NAME = 'President'
and c.COLUMN_NAME <> c.TABLE_NAME + 'Id'

select @insertlist 

select  concat(c.COLUMN_NAME, '@', c.column_name, ', ')
from INFORMATION_SCHEMA.columns c 
where c.TABLE_NAME = 'President'
and c.COLUMN_NAME <> c.TABLE_NAME + 'Id'