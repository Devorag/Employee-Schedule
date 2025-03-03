--ensure that all columns have column names
--1 show list of world records in the category "Animals" with blank row on top, the blank row should have the category filled in with "Animals"
select WorldRecordId = 0, Category = 'Animals', RecordDesc = '', RecordName = '', FullName = '', YearAchieved = 0, Amount = 0, UnitOfMeasure = 0, Code = '', Country = ''
union select w.WorldRecordId, w.Category, w.RecordDesc, w.RecordName, w.FullName, w.YearAchieved, w.Amount, w.UnitOfMeasure, w.Code, w.Country
from worldrecord w 
where w.category = 'Animals'
--1b show same as 1 with two blank rows on top
select w.WorldRecordId = 0, w.Category = 'Animals', w.RecordDesc = ' ', w.RecordName = ' ', w.FullName = ' ', w.YearAchieved = 0, w.Amount = 0, w.UnitOfMeasure = 0, w.Code = ' ', w.Country = ' '
union all select w.WorldRecordId = 0, w.Category = 'Animals', w.RecordDesc = ' ', w.RecordName = ' ', w.FullName = ' ', w.YearAchieved = 0, w.Amount = 0, w.UnitOfMeasure = 0, w.Code = ' ', w.Country = ' '
union all select w.WorldRecordId, w.Category, w.RecordDesc, w.RecordName, w.FullName, w.YearAchieved, w.Amount, w.UnitOfMeasure, w.Code, w.Country
from worldrecord w 
where w.category = 'Animals'
--2 show results set of 2 new world records, produced from literal values, all columns filled in besides for primary key and code

/*3
	Show list of world records and inventions in one result set, 
	include the columns: Invention\Record name, YearInvented\YearAchieved, Full Name (combine inventor first and last name), Country
	use generic names for the columns
	Add Record Type column at the beginning that says whether it is World Record or Invention
	sort by Record Type, then by Year, Record Name
*/
select RecordType = 'World Record', w.RecordName, year = w.YearAchieved, w.FullName, w.Country from WorldRecord w 
union select 'Invention', i.InventionName, i.YearInvented, i.InventorFirstName + ' ' + i.InventorLastName, i.Country from Invention i 
order by recordtype, year, w.RecordName
/*4
	Show each world record on two rows, first row is the record name, second row is the full name, 
	include the code in both rows, sort by code. Note: this will keep the record name and fullname together
*/
select iSequence = 0, w.RecordName, w.Code from WorldRecord w 
union select 1, w.FullName, w.Code from WorldRecord w 
order by w.Code, iSequence

--common errors
--5 take code from 1 and remove one column from blank row

--6 produce one result set by union fullname name and year achieved

--7 take code from 4, remove code column from select column list
