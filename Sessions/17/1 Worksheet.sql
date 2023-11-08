/*
-- WorldRecord
do the work in the table source code files
all computed columns should be persisted
add columns without dropping tables
*/
/*  1. The Code column was mistakenly left out of the world record table!!     
       The column is made up of the following information:
            The first 20 characters of the Record Name with all spaces removed
            The year the record was achieved in
        Add the column back in. Make sure to give the column a unique constraint
*/
alter table worldrecord drop column if EXISTS WorldRecordCode

alter table worldrecord add WorldRecordCode as concat(substring(replace(RecordName, ' ', ''),1,20), YearAchieved) PERSISTED
    constraint u_worldrecord_worldrecordcode UNIQUE(WorldRecordCode)

--SELECT concat(substring(replace(w.RecordName, ' ', ''),1,20), w.YearAchieved), RecordName, YearAchieved 
--from WorldRecord w 
/* 2. The Guinness Book of World Records has mandated an official description for each record. 
    It should always be used for displaying World Records. Add it to the table and call the column OfficialDesc.
    It's made up of the following information:
        Category followed by a colon and a space
        Record Name followed by a dash
        Amount followed by a space and then the Unit of Measure followed by a period and a space
        Literal text "Achieved By " followed by FullName, followed by a space and then year achieved in parentheses
*/
ALTER table worldrecord drop column if exists OFficialDesc

alter table worldrecord add OfficialDesc as CONCAT(Category, '; ', RecordName, '-', Amount, ' ', UnitOfMeasure, '. ', 'Achieved By ', FullName, ' ', YearAchieved, ')') PERSISTED 

--select CONCAT(w.Category, '; ', w.RecordName, '-', w.Amount, ' ', w.UnitOfMeasure, '. ', 'Achieved By ', w.FullName, ' ', w.YearAchieved, ')') PERSISTED 
from WorldRecord w 
/*
3 Check out the new columns by selecting all records!
*/
insert WorldRecord(RecordName, RecordDesc, FullName, Amount, UnitOfMeasure, YearAchieved, Country)
select 'Cool Record', 'Very cool', 'John Smith', 100, 'inches', 2015, 'USA'