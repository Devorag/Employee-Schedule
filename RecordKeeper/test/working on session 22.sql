select 
	concat('@', c.COLUMN_NAME,  ' ', c.DATA_TYPE, ' ', 
	case when c.CHARACTER_MAXIMUM_LENGTH is null then ' ' else concat('(', c.CHARACTER_MAXIMUM_LENGTH, ')') end, 
	case when c.TABLE_NAME + 'Id' = c.COLUMN_NAME then 'output' else '' end,
 	',')
from INFORMATION_SCHEMA.columns c 
where c.TABLE_NAME = 'President'