--WorldRecord, use long hand unless otherwise specified, do as select showing before and after, and then convert to update, after each question reinsert the original data

--1 using shorthand syntax update the 'Country' for all records to USA
UPDATE worldrecord set country = 'USA'
select * from worldrecord
--2 using longhand syntax update the 'Country' for all records to Japan
UPDATE w 
set country = 'Japan'
--select 'Japan' , w.country, w.* 
from worldrecord w 
--3 using shorthand update all records so their category is "misc" and country = "Russia"
UPDATE WorldRecord set Category = 'misc' , Country = 'Russia'
--4 The speed records were entered incorrectly, they were actually 10 times as fast. Multiply the data in the amount column, don't worry about the other columns.
UPDATE w 
set amount = w.Amount * 10
--select amount = w.Amount * 10, W.Amount, * 
from WorldRecord w
where w.category = 'speed'
/*5 
	Include the fullname of record holder in the record name, in this format - Record Name (FullName). eg Heaviest carrot (Christopher Qualley) 
*/
update w
set recordname = w.RecordName + ' (' + w.FullName + ')'
--SELECT w.RecordName, w.FullName, recordname = w.RecordName + ' (' + w.FullName + ')'
from WorldRecord w 

