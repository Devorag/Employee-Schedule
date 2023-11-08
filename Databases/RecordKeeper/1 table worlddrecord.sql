-- 1. All columns should block nulls
-- 3. Block blank values for all varchar column
-- 4. Block negative numbers for int columns
-- 5. Rerun the World Record data

use RecordKeeperDB
go
drop table if exists WorldRecord
go
create table dbo.WorldRecord(
	WorldRecordId int not null identity primary key,
	Category varchar (100) not null constraint ck_world_Record_category_cannot_be_blank check(category<> ''),
	RecordName varchar (200) not null constraint ck_world_Record_Record_Name_cannot_be_blank check(RecordName<> ''),
	RecordDesc varchar (2000) not null constraint ck_world_Record_Record_Desc_cannot_be_blank check(RecordDesc<> '') 
		constraint u_worldrecord_record_description unique,
	FullName varchar (100) not null constraint ck_world_Record_Full_Name_cannot_be_blank check(FullName<> ''),
	Amount decimal not null constraint ck_world_record_amount_cannot_be_negative check(Amount > 0), 
	UnitOfMeasure varchar (100) not null constraint ck_world_Record_Unit_Of_Measure_cannot_be_blank check(UnitOfMeasure<> ''),
	YearAchieved int not null constraint ck_world_record_year_achieved_cannot_be_negative check(YearAchieved > 0),
	Country varchar (50) not null constraint ck_world_Record_country_cannot_be_blank check(country<> '')
	CONSTRAINT u_worldrecord_record_name_and_amount_and_unit_of_measure UNIQUE(RecordName, Amount, UnitOfMeasure),

	)
go
alter table worldrecord drop column if EXISTS WorldRecordCode

alter table worldrecord add WorldRecordCode as concat(substring(replace(RecordName, ' ', ''),1,20), YearAchieved) PERSISTED
    constraint u_worldrecord_worldrecordcode UNIQUE
go	

ALTER table worldrecord drop column if exists OFficialDesc

alter table worldrecord add OfficialDesc as CONCAT(Category, '; ', RecordName, '-', Amount, ' ', UnitOfMeasure, '. ', 'Achieved By ', FullName, ' ', YearAchieved, ')') PERSISTED 